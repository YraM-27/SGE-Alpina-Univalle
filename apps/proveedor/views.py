from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.views.generic import ListView, DetailView
from django.db.models import Q

from .models import Proveedor, OrdenPedido
from .forms import ProveedorForm


class ProveedorListView(ListView):
    model = Proveedor
    template_name = 'proveedor/proveedor_list.html'
    context_object_name = 'proveedores'
    paginate_by = 15

    def get_queryset(self):
        qs = super().get_queryset().order_by('nombre')
        q = self.request.GET.get('q')
        if q:
            qs = qs.filter(
                Q(id_proveedor__icontains=q) |
                Q(nombre__icontains=q) |
                Q(tipo_proveedor__icontains=q) |
                Q(email__icontains=q)
            )
        return qs

    def get_context_data(self, **kwargs):
        ctx = super().get_context_data(**kwargs)
        ctx['q'] = self.request.GET.get('q', '')
        return ctx


class ProveedorDetailView(DetailView):
    model = Proveedor
    template_name = 'proveedor/proveedor_detail.html'
    context_object_name = 'proveedor'
    pk_url_kwarg = 'pk'


def proveedor_create(request):
    if request.method == 'POST':
        form = ProveedorForm(request.POST)
        if form.is_valid():
            proveedor = form.save()
            messages.success(request, f'Proveedor {proveedor.id_proveedor} creado correctamente.')
            return redirect('proveedores:detalle', pk=proveedor.pk)
    else:
        form = ProveedorForm()
    return render(request, 'proveedor/proveedor_form.html', {'form': form, 'accion': 'Crear'})


def proveedor_update(request, pk):
    proveedor = get_object_or_404(Proveedor, pk=pk)
    if request.method == 'POST':
        form = ProveedorForm(request.POST, instance=proveedor)
        if form.is_valid():
            form.save()
            messages.success(request, f'Proveedor {proveedor.id_proveedor} actualizado correctamente.')
            return redirect('proveedores:detalle', pk=proveedor.pk)
    else:
        form = ProveedorForm(instance=proveedor)
        # Bloquear edición de la PK, igual que en clientes
        form.fields['id_proveedor'].disabled = True
    return render(request, 'proveedor/proveedor_form.html', {'form': form, 'accion': 'Editar', 'proveedor': proveedor})


def proveedor_delete(request, pk):
    proveedor = get_object_or_404(Proveedor, pk=pk)

    if OrdenPedido.objects.filter(id_proveedor=proveedor).exists():
        messages.error(
            request,
            f'No se puede eliminar al proveedor {proveedor.id_proveedor} porque tiene órdenes de pedido asociadas.'
        )
        return redirect('proveedores:detalle', pk=proveedor.pk)

    if request.method == 'POST':
        proveedor.delete()
        messages.success(request, f'Proveedor {proveedor.id_proveedor} eliminado.')
        return redirect('proveedores:lista')
    return render(request, 'proveedor/proveedor_confirm_delete.html', {'proveedor': proveedor})

