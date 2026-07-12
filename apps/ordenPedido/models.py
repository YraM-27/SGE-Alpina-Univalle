from django.db import models

# Create your models here.
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