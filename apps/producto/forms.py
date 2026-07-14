from django import forms
from .models import Producto, PrecioInicialProducto


class ProductoForm(forms.ModelForm):
     class Meta:
        model = Producto
        fields = ['id_producto','nombre','descripcion',
            'contenido_neto','unidad_contenido','id_marca',
            'id_iva','activo'
        ]

        widgets = {
            'id_producto': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Código del producto',
            }),
            'nombre': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Nombre del producto',
            }),
            'descripcion': forms.Textarea(attrs={
                'class': 'form-control',
                'rows': 4,
            }),
            'contenido_neto': forms.NumberInput(attrs={
                'class': 'form-control',
                'step': '0.1',
                'min': '0',
            }),
            'unidad_contenido': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Ej: ml, g, kg, L',
            }),
            'id_marca': forms.Select(attrs={
                'class': 'form-control',
            }),
            'id_iva': forms.Select(attrs={
                'class': 'form-control',
            }),
        }

class PrecioInicialForm(forms.ModelForm):
    class Meta:
        model = PrecioInicialProducto
        fields = ['id_producto', 'precio']
        widgets = {
            'id_producto': forms.Select(attrs={'class': 'form-control'}),
            'precio': forms.NumberInput(attrs={'class': 'form-control', 'step': '0.01'}),
        }
        labels = {
            'id_producto': 'Producto',
            'precio': 'Precio inicial',
        }

    def clean_precio(self):
        precio = self.cleaned_data.get('precio')
        if precio is not None and precio <= 0:
            raise ValidationError('El precio debe ser mayor que cero.')
        return precio

    def clean_id_producto(self):
        producto = self.cleaned_data.get('id_producto')
        if hasattr(producto, 'precio_inicial'):
            raise ValidationError(
                f'"{producto}" ya tiene un precio registrado. '
                f'Su precio actual se toma del historial de ventas.'
            )
        return producto

