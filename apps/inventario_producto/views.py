from django.shortcuts import render, redirect
from django.contrib import messages
from .models import InventarioProducto, Bodega
from .forms import InventarioProductoForm


def inventario_listar(request):
    if request.method == 'POST':
        form = InventarioProductoForm(request.POST)
        if form.is_valid():
            inventario = form.save()
            messages.success(
                request,
                f'Stock inicial registrado: {inventario.stock} unidades de '
                f'"{inventario.id_producto}" en "{inventario.id_bodega}".'
            )
            return redirect('inventario:inventario_listar')
    else:
        form = InventarioProductoForm()

    inventarios = InventarioProducto.objects.select_related(
        'id_producto', 'id_bodega'
    ).order_by('id_producto')

    bodega_id = request.GET.get('bodega')
    if bodega_id:
        inventarios = inventarios.filter(id_bodega=bodega_id)

    bodegas = Bodega.objects.all()

    return render(request, 'inventario_producto/inventario_list.html', {   # ← corregido
        'inventarios': inventarios,
        'bodegas': bodegas,
        'bodega_seleccionada': bodega_id,
        'form': form,
    })