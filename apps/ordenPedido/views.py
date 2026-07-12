from django.shortcuts import render, redirect
from django.contrib import messages

from .models import OrdenPedido
from .forms import OrdenPedidoForm


def lista_ordenes(request):
    ordenes = OrdenPedido.objects.all().order_by('num_orden')
    return render(request, 'ordenPedido/ordenPedido_list.html', {'ordenes': ordenes})


def crear_orden(request):
    if request.method == 'POST':
        form = OrdenPedidoForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Orden de pedido creada correctamente.')
            return redirect('ordenPedido:lista')
    else:
        form = OrdenPedidoForm()

    return render(request, 'ordenPedido/form.html', {'form': form})