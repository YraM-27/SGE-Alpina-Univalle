from django.db import models

# Create your models here.

class DetallePedido(models.Model):
    num_orden = models.OneToOneField('OrdenPedido', models.DO_NOTHING, db_column='num_orden', primary_key=True)  # The composite primary key (num_orden, id_insumo) found, that is not supported. The first column is selected.
    id_insumo = models.ForeignKey('MateriaPrima', models.DO_NOTHING, db_column='id_insumo')
    cantidad = models.IntegerField(blank=True, null=True)
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = False
        db_table = 'detalle_pedido'
        unique_together = (('num_orden', 'id_insumo'),)

class OrdenPedido(models.Model):
    num_orden = models.AutoField(primary_key=True)
    id_proveedor = models.ForeignKey('Proveedor', models.DO_NOTHING, db_column='id_proveedor')
    fecha_pedido = models.DateField()
    lugar_entrega = models.CharField(max_length=60)
    estado = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'orden_pedido'

class Proveedor(models.Model):
    id_proveedor = models.CharField(primary_key=True, max_length=30)
    tipo_id = models.CharField(max_length=20)
    nombre = models.CharField(max_length=50)
    habeas_data = models.BooleanField()
    ciudad = models.CharField(max_length=20)
    direccion_op = models.CharField(max_length=60)
    direccion_res = models.CharField(max_length=60)
    telefono = models.CharField(unique=True, max_length=20)
    email = models.CharField(unique=True, max_length=40)
    representante = models.CharField(max_length=60)
    tipo_regimen = models.CharField(max_length=20)
    rut = models.CharField(unique=True, max_length=60)
    tiempo_entrega = models.IntegerField()
    persona_comercial = models.CharField(max_length=60)
    tipo_proveedor = models.CharField(max_length=30)
    persona_cartera = models.CharField(max_length=60)
    persona_logistica = models.CharField(max_length=60)
    num_dias_pago = models.IntegerField()
    calificacion = models.IntegerField(blank=True, null=True)
    id_cuenta = models.ForeignKey('CuentaBancaria', models.DO_NOTHING, db_column='id_cuenta')

    class Meta:
        managed = False
        db_table = 'proveedor'

class CuentaBancaria(models.Model):
    id_cuenta = models.CharField(primary_key=True, max_length=30)
    nombre_banco = models.CharField(max_length=30)
    tipo_cuenta = models.CharField(max_length=30)
    num_cuenta = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'cuenta_bancaria'

class MateriaPrima(models.Model):
    id_insumo = models.CharField(primary_key=True, max_length=30)
    nombre = models.CharField(max_length=50)
    unidad_medida = models.CharField(max_length=10)
    demanda_diaria = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'materia_prima'