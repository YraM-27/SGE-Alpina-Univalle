from django.urls import path
from . import views

app_name = 'clientes'

urlpatterns = [
    path('', views.ClienteListView.as_view(), name='lista'),
    path('nuevo/', views.cliente_create, name='crear'),
    path('<str:pk>/', views.ClienteDetailView.as_view(), name='detalle'),
    path('<str:pk>/editar/', views.cliente_update, name='editar'),
    path('<str:pk>/eliminar/', views.cliente_delete, name='eliminar'),
]