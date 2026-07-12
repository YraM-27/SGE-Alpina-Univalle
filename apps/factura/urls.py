from django.urls import path
from . import views

app_name = 'factura'

urlpatterns = [
    path('', views.factura_listar, name='factura_listar'),
    path('nueva/', views.factura_crear, name='factura_crear'),
    path('<int:pk>/', views.factura_detalle, name='factura_detalle'),
    path('<int:pk>/editar/', views.factura_editar, name='factura_editar'),
    path('<int:pk>/eliminar/', views.factura_eliminar, name='factura_eliminar'),
]