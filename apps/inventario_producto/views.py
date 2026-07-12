from django.shortcuts import render
from .models import InventarioProducto, Bodega



def inventario_listar(request):
    inventarios = InventarioProducto.objects.select_related(
        'id_producto', 'id_bodega'
    ).order_by('id_producto')

    bodega_id = request.GET.get('bodega')
    if bodega_id:
        inventarios = inventarios.filter(id_bodega=bodega_id)

    bodegas = Bodega.objects.all()

    return render(request, 'inventario_producto/inventario_list.html', {
        'inventarios': inventarios,
        'bodegas': bodegas,
        'bodega_seleccionada': bodega_id,
    })