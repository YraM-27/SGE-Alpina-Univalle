from django.db import models

# Create your models here.
class MarcaProducto(models.Model):
    id_marca = models.AutoField(primary_key=True)
    nombre_marca = models.CharField(max_length=50, blank=True, null=True)

    def __str__(self):
        return self.nombre_marca

    class Meta:
        managed = False
        db_table = 'marca_producto'

class Iva(models.Model):
    id_iva = models.AutoField(primary_key=True)
    categoria_iva = models.CharField(unique=True, max_length=20)
    porcentaje = models.DecimalField(max_digits=5, decimal_places=2)

    def __str__(self):
        return f'{self.categoria_iva} ({self.porcentaje}%)'
    
    class Meta:
        managed = False
        db_table = 'iva'

class Producto(models.Model):
    id_producto = models.CharField(primary_key=True, max_length=30)
    nombre = models.CharField(max_length=60)
    descripcion = models.TextField()
    contenido_neto = models.DecimalField(max_digits=10, decimal_places=1)
    unidad_contenido = models.CharField(max_length=10)
    id_marca = models.ForeignKey(MarcaProducto, models.DO_NOTHING, db_column='id_marca')
    id_iva = models.ForeignKey(Iva, models.DO_NOTHING, db_column='id_iva', blank=True, null=True)
    activo = models.BooleanField(default=True)  # <-- nuevo campo

    class Meta:
        managed = False
        db_table = 'producto'

