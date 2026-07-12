from django.db import models
from apps.producto.models import Producto


class Sede(models.Model):
    id_sede = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=30)
    tipo_sede = models.CharField(max_length=20)
    ciudad = models.CharField(max_length=20)
    ubicacion = models.CharField(max_length=50)
    telefono = models.CharField(max_length=15)

    class Meta:
        managed = False
        db_table = 'sede'

    def __str__(self):
        return f'{self.nombre} ({self.ciudad})'


class Bodega(models.Model):
    id_bodega = models.AutoField(primary_key=True)
    nombre_bodega = models.CharField(max_length=30)
    ubicacion = models.CharField(max_length=30)
    capacidad = models.IntegerField()
    id_sede = models.ForeignKey(Sede, models.DO_NOTHING, db_column='id_sede')

    class Meta:
        managed = False
        db_table = 'bodega'

    def __str__(self):
        return f'{self.nombre_bodega} - {self.id_sede.nombre}'


class InventarioProducto(models.Model):
    id_producto = models.ForeignKey(Producto, models.DO_NOTHING, db_column='id_producto', primary_key=True)
    id_bodega = models.ForeignKey(Bodega, models.DO_NOTHING, db_column='id_bodega')
    stock = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = False
        db_table = 'inventario_producto'
        unique_together = (('id_bodega', 'id_producto'),)

    def __str__(self):
        return f'{self.id_producto} en {self.id_bodega} - stock: {self.stock}'
