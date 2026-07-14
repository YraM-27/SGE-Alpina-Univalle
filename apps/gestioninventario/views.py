from django.shortcuts import render

# Create your views here.
from datetime import date

from django.shortcuts import render, redirect
from django.contrib import messages

from .models import (
    OrdenPedido,
    DetallePedido,
    Proveedor,
    MateriaPrima,
    InventarioMateriaPrima,
)


from django.shortcuts import render
from .models import Proveedor, MateriaPrima, DetallePedido


from django.shortcuts import render
from .models import Proveedor, MateriaPrima, DetallePedido

from django.db.models import Sum



from django.db.models import Sum
from django.shortcuts import render

from .models import (
    Proveedor,
    MateriaPrima,
    InventarioMateriaPrima,
)


def lista_ordenes(request):

    proveedores = Proveedor.objects.all().order_by("nombre")

    proveedor_id = request.GET.get("id_proveedor")
    insumo_id = request.GET.get("id_insumo")

    materias = MateriaPrima.objects.none()
    inventarios = []

    if proveedor_id:

        materias = MateriaPrima.objects.filter(
            detallepedido__num_orden__id_proveedor=proveedor_id
        ).distinct().order_by("nombre")

        # Si el insumo ya no pertenece al proveedor seleccionado,
        # se limpia la selección.
        if insumo_id and not materias.filter(pk=insumo_id).exists():
            insumo_id = None

        if insumo_id:

            inventarios = list(
                InventarioMateriaPrima.objects
                .filter(id_insumo=insumo_id)
                .values(
                    "id_insumo__nombre",
                    "id_insumo__demanda_diaria"
                )
                .annotate(
                    inventario_actual=Sum("stock_actual")
                )
            )

            for inventario in inventarios:

                stock = inventario["inventario_actual"] or 0
                demanda = inventario["id_insumo__demanda_diaria"] or 0

                if demanda > 0:
                    dias_stock = stock / demanda
                else:
                    dias_stock = 0

                if dias_stock == 0:
                    inventario["estado"] = "AGOTADO"
                    inventario["accion"] = "Pedido Inmediato"

                elif dias_stock < 5:
                    inventario["estado"] = "CRÍTICO"
                    inventario["accion"] = "Pedido de Emergencia"

                elif dias_stock <= 15:
                    inventario["estado"] = "ALERTA"
                    inventario["accion"] = "Realizar Pedido Normal"

                else:
                    inventario["estado"] = "SEGURO"
                    inventario["accion"] = "Mantener Monitoreo"

    return render(request, "gestioninventario/gestion_list.html", {
        "proveedores": proveedores,
        "materias": materias,
        "inventarios": inventarios,
        "proveedor_seleccionado": proveedor_id,
        "materia_seleccionada": insumo_id,
    })


