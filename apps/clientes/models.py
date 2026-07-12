from django.db import models


# Create your models here.
class Cliente(models.Model):
    id_cliente = models.CharField(primary_key=True, max_length=20)
    tipo_id = models.CharField(max_length=20)
    nombres = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=50)
    habeas_data = models.BooleanField()
    ciudad = models.CharField(max_length=20)
    direccion_op = models.CharField(max_length=50)
    direccion_res = models.CharField(max_length=50)
    telefono = models.CharField(max_length=20)
    email = models.CharField(max_length=50)
    representante = models.CharField(max_length=60)
    tipo_regimen = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'cliente'
    
    def __str__(self):
        return self.nombre


