from datetime import date

from django.shortcuts import render, redirect
from django.contrib import messages

from .models import (
    OrdenPedido,
    DetallePedido,
    Proveedor,
    MateriaPrima
)


from django.shortcuts import render
from .models import Proveedor, MateriaPrima, DetallePedido


from django.shortcuts import render
from .models import Proveedor, MateriaPrima, DetallePedido


def lista_ordenes(request):

    proveedores = Proveedor.objects.all().order_by("nombre")

    proveedor_id = request.GET.get("id_proveedor")
    insumo_id = request.GET.get("id_insumo")

    materias = MateriaPrima.objects.none()
    detalles = DetallePedido.objects.none()

    if proveedor_id:

        materias = MateriaPrima.objects.filter(
            detallepedido__num_orden__id_proveedor=proveedor_id
        ).distinct()

        if insumo_id:
            detalles = DetallePedido.objects.filter(
                num_orden__id_proveedor=proveedor_id,
                id_insumo=insumo_id
            ).select_related(
                "num_orden",
                "num_orden__id_proveedor",
                "id_insumo"
            ).order_by("num_orden__num_orden")

    return render(request, "ordenPedido/ordenPedido_list.html", {
        "proveedores": proveedores,
        "materias": materias,
        "detalles": detalles,
        "proveedor_seleccionado": proveedor_id,
        "materia_seleccionada": insumo_id,
    })


def crear_orden(request):

    proveedores = Proveedor.objects.all().order_by("nombre")
    materias = MateriaPrima.objects.all().order_by("nombre")

    if request.method == "POST":

        orden = OrdenPedido.objects.create(
            id_proveedor=Proveedor.objects.get(pk=request.POST["id_proveedor"]),
            fecha_pedido=date.today(),
            lugar_entrega=request.POST["lugar_entrega"],
            estado="Pendiente"
        )

        DetallePedido.objects.create(
            num_orden=orden,
            id_insumo=MateriaPrima.objects.get(pk=request.POST["id_insumo"]),
            cantidad=request.POST["cantidad"],
            precio_unitario=request.POST["precio_unitario"]
        )

        messages.success(request, "Orden creada correctamente.")
        return redirect("ordenPedido:lista")

    return render(request, "ordenPedido/form.html", {
        "proveedores": proveedores,
        "materias": materias,
        "hoy": date.today()
    })