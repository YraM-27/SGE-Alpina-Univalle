from django import forms
from .models import OrdenPedido


class OrdenPedidoForm(forms.ModelForm):
    class Meta:
        model = OrdenPedido
        fields = [
            'id_proveedor',
            'fecha_pedido',
            'lugar_entrega',
            'estado',
        ]

        widgets = {
            'id_proveedor': forms.Select(attrs={
                'class': 'form-control',
            }),
            'fecha_pedido': forms.DateInput(attrs={
                'class': 'form-control',
                'type': 'date',
            }),
            'lugar_entrega': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Lugar de entrega',
            }),
            'estado': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Estado de la orden',
            }),
        }