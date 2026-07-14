import json
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator
from django.db import transaction
from django.core.exceptions import ValidationError

from .models import Factura, DetalleFactura, VwFactura, VwDetalleFactura
from .forms import FacturaForm, DetalleFacturaFormSet
from apps.inventario_producto.models import InventarioProducto


def factura_listar(request):
    # Usamos la vista para tener el total ya calculado (con IVA)
    facturas = VwFactura.objects.all().order_by('-fecha_hora_emision')

    numero = request.GET.get('numero_factura')
    if numero:
        facturas = facturas.filter(numero_factura__icontains=numero)

    paginator = Paginator(facturas, 15)
    page_obj = paginator.get_page(request.GET.get('page'))

    return render(request, 'factura/factura_list.html', {'page_obj': page_obj})


def factura_detalle(request, pk):
    factura = get_object_or_404(VwFactura, id_factura=pk)
    detalles = VwDetalleFactura.objects.filter(id_factura=pk)

    return render(request, 'factura/factura_detail.html', {
        'factura': factura,
        'detalles': detalles,
    })


def descontar_stock(producto, cantidad_requerida):
    """
    Descuenta 'cantidad_requerida' del producto, tomando stock
    de una o varias bodegas según disponibilidad.
    Lanza ValidationError si no hay stock suficiente en total.
    """
    inventarios = InventarioProducto.objects.select_for_update().filter(
        id_producto=producto
    ).order_by('-stock')  # prioriza bodegas con más stock primero

    stock_total = sum(inv.stock for inv in inventarios)

    if stock_total < cantidad_requerida:
        raise ValidationError(
            f'Stock insuficiente para "{producto}". '
            f'Disponible: {stock_total}, solicitado: {cantidad_requerida}.'
        )

    restante = cantidad_requerida
    for inventario in inventarios:
        if restante <= 0:
            break
        descuento = min(inventario.stock, restante)
        inventario.stock -= descuento
        inventario.save()
        restante -= descuento


def obtener_ultimos_precios():
    """
    Devuelve un diccionario {id_producto: ultimo_precio_unitario}
    basado en la factura más reciente donde se vendió cada producto.
    """
    precios = {}
    ultimos_detalles = (
        DetalleFactura.objects
        .select_related('id_factura')
        .order_by('id_producto', '-id_factura__fecha_hora_emision')
    )
    vistos = set()
    for detalle in ultimos_detalles:
        if detalle.id_producto_id not in vistos:
            precios[detalle.id_producto_id] = str(detalle.precio_unitario)
            vistos.add(detalle.id_producto_id)
    return precios


NIT_EMPRESA = '860005224-6'
RAZON_SOCIAL_EMPRESA = 'Alpina Productos Alimenticios S.A.'
DIRECCION_EMPRESA = 'Km 3 via Sopo-Briceno, Sopo, Cundinamarca'


def factura_crear(request):
    if request.method == 'POST':
        form = FacturaForm(request.POST)
        formset = DetalleFacturaFormSet(request.POST)

        if form.is_valid() and formset.is_valid():
            try:
                with transaction.atomic():
                    # 1. Validar stock y descontar por cada producto
                    for detalle_form in formset:
                        if detalle_form.cleaned_data and not detalle_form.cleaned_data.get('DELETE'):
                            producto = detalle_form.cleaned_data['id_producto']
                            cantidad = detalle_form.cleaned_data['cantidad']
                            descontar_stock(producto, cantidad)

                    # 2. Guardar factura y detalles
                    factura = form.save(commit=False)
                    factura.nit = NIT_EMPRESA
                    factura.razon_social = RAZON_SOCIAL_EMPRESA
                    factura.direccion = DIRECCION_EMPRESA
                    factura.save()

                    formset.instance = factura
                    formset.save()

                messages.success(request, f'Factura N.º {factura.numero_factura} creada correctamente.')
                return redirect('factura:factura_detalle', pk=factura.pk)

            except ValidationError as e:
                messages.error(request, str(e))
        else:
            messages.error(request, 'Revisa los errores en el formulario y en los detalles.')
    else:
        form = FacturaForm()
        formset = DetalleFacturaFormSet()

    return render(request, 'factura/factura_form.html', {
        'form': form,
        'formset': formset,
        'ultimos_precios': json.dumps(obtener_ultimos_precios()),
    })


def factura_editar(request, pk):
    factura = get_object_or_404(Factura, pk=pk)
    messages.warning(request, 'Las facturas emitidas no pueden ser modificadas, por control contable.')
    return redirect('factura:factura_detalle', pk=factura.pk)


def factura_eliminar(request, pk):
    factura = get_object_or_404(Factura, pk=pk)
    messages.error(request, 'No está permitido eliminar facturas del historial contable.')
    return redirect('factura:factura_detalle', pk=factura.pk)
