from django.urls import path
from . import views

app_name = 'gestioninventario'

urlpatterns = [
    path('', views.lista_ordenes, name='lista'),
    ]