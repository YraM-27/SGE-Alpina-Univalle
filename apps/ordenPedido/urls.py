from django.urls import path
from . import views

app_name = 'ordenPedido'

urlpatterns = [
    path('', views.lista_ordenes, name='lista'),
    path('crear/', views.crear_orden, name='crear')
]