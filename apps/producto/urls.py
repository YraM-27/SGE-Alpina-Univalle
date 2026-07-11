from django.urls import path
from . import views

app_name = 'producto'

urlpatterns = [
    path('', views.lista_productos, name='lista'),
    path('crear/', views.crear_producto, name='crear'),
    path('<str:pk>/editar/', views.editar_producto, name='editar'),
    path('<str:pk>/eliminar/', views.eliminar_producto, name='eliminar'),
]