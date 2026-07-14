from django import forms
from django.core.exceptions import ValidationError
from .models import InventarioProducto


class InventarioProductoForm(forms.ModelForm):
    class Meta:
        model = InventarioProducto
        fields = ['id_producto', 'id_bodega', 'stock']
        widgets = {
            'id_producto': forms.Select(attrs={'class': 'form-control'}),
            'id_bodega': forms.Select(attrs={'class': 'form-control'}),
            'stock': forms.NumberInput(attrs={'class': 'form-control', 'step': '0.01'}),
        }
        labels = {
            'id_producto': 'Producto',
            'id_bodega': 'Bodega',
            'stock': 'Stock inicial',
        }

    def clean_stock(self):
        stock = self.cleaned_data.get('stock')
        if stock is not None and stock < 0:
            raise ValidationError('El stock no puede ser negativo.')
        return stock

    def clean(self):
        cleaned_data = super().clean()
        producto = cleaned_data.get('id_producto')
        bodega = cleaned_data.get('id_bodega')

        if producto and bodega:
            existe = InventarioProducto.objects.filter(
                id_producto=producto, id_bodega=bodega
            ).exists()
            if existe:
                raise ValidationError(
                    f'"{producto}" ya tiene stock registrado en "{bodega}". '
                    f'Para modificarlo, contacta al administrador de inventario.'
                )
        return cleaned_data