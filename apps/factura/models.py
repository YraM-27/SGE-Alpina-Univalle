from django.db import models
from django.core.exceptions import ValidationError
from apps.producto.models import Producto
from apps.terceros.models import Cliente

class Factura(models.Model):
    id_factura = models.AutoField(primary_key=True)
    nit = models.CharField(max_length=20)
    razon_social = models.CharField(max_length=40, blank=True, null=True)
    direccion = models.CharField(max_length=60)
    numero_factura = models.IntegerField(unique=True)
    fecha_hora_emision = models.DateTimeField()
    metodo_pago = models.CharField(max_length=20)
    id_cliente = models.ForeignKey(Cliente, models.DO_NOTHING, db_column='id_cliente')

    class Meta:
        managed = False
        db_table = 'factura'

    def save(self, *args, **kwargs):
        if self.pk and Factura.objects.filter(pk=self.pk).exists():
            original = Factura.objects.get(pk=self.pk)
            if original.numero_factura != self.numero_factura:
                raise ValidationError(
                    'No se puede modificar el número de factura de un registro existente.'
                )
        super().save(*args, **kwargs)

    def delete(self, *args, **kwargs):
        raise ValidationError(
            'Las facturas no pueden ser eliminadas para preservar el historial contable.'
        )
    
class DetalleFactura(models.Model):
    id_detalle_factura = models.CharField(primary_key=True, max_length=30)
    cantidad = models.IntegerField()
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2)
    id_factura = models.ForeignKey(Factura, models.DO_NOTHING, db_column='id_factura')
    id_producto = models.ForeignKey(Producto, models.DO_NOTHING, db_column='id_producto')

    class Meta:
        managed = False
        db_table = 'detalle_factura'

    def save(self, *args, **kwargs):
        if self._state.adding is False and self.pk:
            # Ya existía en BD -> no se permite modificar
            if DetalleFactura.objects.filter(pk=self.pk).exists():
                raise ValidationError(
                    'Los detalles de una factura no pueden modificarse una vez guardados.'
                )
        super().save(*args, **kwargs)

    def delete(self, *args, **kwargs):
        raise ValidationError(
            'Los detalles de una factura no pueden eliminarse individualmente.'
        )

    @property
    def subtotal(self):
        """Calculado en Python ya que la tabla base no lo almacena."""
        return self.cantidad * self.precio_unitario
    
class VwFactura(models.Model):
    id_factura = models.IntegerField(primary_key=True)
    numero_factura = models.IntegerField(blank=True, null=True)
    fecha_hora_emision = models.DateTimeField(blank=True, null=True)
    nit = models.CharField(max_length=20, blank=True, null=True)
    razon_social = models.CharField(max_length=40, blank=True, null=True)
    direccion = models.CharField(max_length=60, blank=True, null=True)
    metodo_pago = models.CharField(max_length=20, blank=True, null=True)
    id_cliente = models.CharField(max_length=20, blank=True, null=True)
    subtotal = models.DecimalField(max_digits=12, decimal_places=2, blank=True, null=True)
    iva_total = models.DecimalField(max_digits=12, decimal_places=2, blank=True, null=True)
    total_pagar = models.DecimalField(max_digits=12, decimal_places=2, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'vw_factura'


class VwDetalleFactura(models.Model):
    id_detalle_factura = models.CharField(primary_key=True, max_length=30)
    id_factura = models.IntegerField(blank=True, null=True)
    id_producto = models.CharField(max_length=30, blank=True, null=True)
    nombre = models.CharField(max_length=60, blank=True, null=True)
    cantidad = models.IntegerField(blank=True, null=True)
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    subtotal = models.DecimalField(max_digits=12, decimal_places=2, blank=True, null=True)
    categoria_iva = models.CharField(max_length=20, blank=True, null=True)
    iva = models.DecimalField(max_digits=12, decimal_places=2, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'vw_detalle_factura'
    
