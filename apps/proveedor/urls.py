from django.urls import path
from . import views

app_name = 'proveedores'

urlpatterns = [
    path('', views.ProveedorListView.as_view(), name='lista'),
    path('nuevo/', views.proveedor_create, name='crear'),
    path('<str:pk>/', views.ProveedorDetailView.as_view(), name='detalle'),
    path('<str:pk>/editar/', views.proveedor_update, name='editar'),
    path('<str:pk>/eliminar/', views.proveedor_delete, name='eliminar'),
]
