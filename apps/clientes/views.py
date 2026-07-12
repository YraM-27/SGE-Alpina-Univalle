from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.views.generic import ListView, DetailView
from django.core.paginator import Paginator
from django.db.models import Q

from .models import Cliente
from apps.factura.models import Factura
from .forms import ClienteForm


class ClienteListView(ListView):
    model = Cliente
    template_name = 'terceros/cliente_list.html'
    context_object_name = 'clientes'
    paginate_by = 15

    def get_queryset(self):
        qs = super().get_queryset().order_by('apellidos', 'nombres')
        q = self.request.GET.get('q')
        if q:
            qs = qs.filter(
                Q(id_cliente__icontains=q) |
                Q(nombres__icontains=q) |
                Q(apellidos__icontains=q) |
                Q(email__icontains=q)
            )
        return qs

    def get_context_data(self, **kwargs):
        ctx = super().get_context_data(**kwargs)
        ctx['q'] = self.request.GET.get('q', '')
        return ctx


class ClienteDetailView(DetailView):
    model = Cliente
    template_name = 'terceros/cliente_detail.html'
    context_object_name = 'cliente'
    pk_url_kwarg = 'pk'


def cliente_create(request):
    if request.method == 'POST':
        form = ClienteForm(request.POST)
        if form.is_valid():
            cliente = form.save()
            messages.success(request, f'Cliente {cliente.id_cliente} creado correctamente.')
            return redirect('clientes:detalle', pk=cliente.pk)
    else:
        form = ClienteForm()
    return render(request, 'terceros/cliente_form.html', {'form': form, 'accion': 'Crear'})


def cliente_update(request, pk):
    cliente = get_object_or_404(Cliente, pk=pk)
    if request.method == 'POST':
        form = ClienteForm(request.POST, instance=cliente)
        if form.is_valid():
            form.save()
            messages.success(request, f'Cliente {cliente.id_cliente} actualizado correctamente.')
            return redirect('clientes:detalle', pk=cliente.pk)
    else:
        form = ClienteForm(instance=cliente)
        # Bloquear edición de la PK
        form.fields['id_cliente'].disabled = True
    return render(request, 'terceros/cliente_form.html', {'form': form, 'accion': 'Editar', 'cliente': cliente})


def cliente_delete(request, pk):
    cliente = get_object_or_404(Cliente, pk=pk)

    if Factura.objects.filter(id_cliente=cliente).exists():
        messages.error(
            request,
            f'No se puede eliminar al cliente {cliente.id_cliente} porque tiene facturas asociadas.'
        )
        return redirect('clientes:detalle', pk=cliente.pk)
    
    if request.method == 'POST':
        cliente.delete()
        messages.success(request, f'Cliente {cliente.id_cliente} eliminado.')
        return redirect('clientes:lista')
    return render(request, 'terceros/cliente_confirm_delete.html', {'cliente': cliente})
