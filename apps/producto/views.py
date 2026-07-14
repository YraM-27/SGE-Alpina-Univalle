from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.views.generic import ListView, CreateView, UpdateView, View
from django.urls import reverse_lazy
from django.db.models import OuterRef, Subquery

from .models import Producto
from apps.factura.models import DetalleFactura
from .forms import ProductoForm
from .forms import PrecioInicialForm

def lista_productos(request):
    ultimo_precio = DetalleFactura.objects.filter(
        id_producto=OuterRef('pk')
    ).order_by('-id_factura__fecha_hora_emision').values('precio_unitario')[:1]

    productos = Producto.objects.filter(activo=True).annotate(
        precio_actual=Subquery(ultimo_precio)
    )

    return render(request, 'producto/lista.html', {'productos': productos})

def crear_producto(request):
    if request.method == 'POST':
        form = ProductoForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Producto creado correctamente.')
            return redirect('producto:lista')
    else:
        form = ProductoForm()

    return render(request, 'producto/form.html', {'form': form})

def editar_producto(request, pk):
    producto = get_object_or_404(Producto, pk=pk, activo=True)
    if request.method == 'POST':
        form = ProductoForm(request.POST, instance=producto)
        if form.is_valid():
            form.save()
            messages.success(request, 'Producto actualizado correctamente.')
            return redirect('producto:lista')
    else:
        form = ProductoForm(instance=producto)

    return render(request, 'producto/form.html', {'form': form})

def eliminar_producto(request, pk):
    producto = get_object_or_404(Producto, pk=pk, activo=True)
    if request.method == 'POST':
        producto.activo = False
        producto.save(update_fields=['activo'])
        messages.success(request, 'Producto desactivado correctamente.')
        return redirect('producto:lista')
    return render(request, 'producto/confirmar_eliminar.html', {'producto': producto})


def precio_inicial_crear(request):
    if request.method == 'POST':
        form = PrecioInicialForm(request.POST)
        if form.is_valid():
            precio = form.save()
            messages.success(
                request,
                f'Precio inicial registrado para "{precio.id_producto}": ${precio.precio}'
            )
            return redirect('producto:precio_inicial_crear')
    else:
        form = PrecioInicialForm()

    return render(request, 'producto/precio_inicial_form.html', {'form': form})
