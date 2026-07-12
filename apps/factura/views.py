from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator
from django.db import transaction
from django.core.exceptions import ValidationError

from .models import Factura, VwFactura, VwDetalleFactura
from .forms import FacturaForm, DetalleFacturaFormSet



def factura_listar(request):
    # Usamos la vista para tener el total ya calculado (con IVA)
    facturas = VwFactura.objects.all().order_by('-fecha_hora_emision')

    numero = request.GET.get('numero_factura')
    nit = request.GET.get('nit')
    if numero:
        facturas = facturas.filter(numero_factura__icontains=numero)
    if nit:
        facturas = facturas.filter(nit__icontains=nit)

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


def factura_crear(request):
    if request.method == 'POST':
        form = FacturaForm(request.POST)
        formset = DetalleFacturaFormSet(request.POST)

        if form.is_valid() and formset.is_valid():
            try:
                with transaction.atomic():
                    factura = form.save()
                    formset.instance = factura
                    formset.save()
                messages.success(
                    request,
                    f'Factura N.º {factura.numero_factura} creada correctamente.'
                )
                return redirect('factura_detalle', pk=factura.pk)
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
    })



def factura_editar(request, pk):
    factura = get_object_or_404(Factura, pk=pk)
    messages.warning(request, 'Las facturas emitidas no pueden ser modificadas, por control contable.')
    return redirect('factura:factura_detalle', pk=factura.pk)



def factura_eliminar(request, pk):
    factura = get_object_or_404(Factura, pk=pk)
    messages.error(request, 'No está permitido eliminar facturas del historial contable.')
    return redirect('factura:factura_detalle', pk=factura.pk)
