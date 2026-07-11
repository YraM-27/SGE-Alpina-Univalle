from django import forms
from .models import Producto


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

