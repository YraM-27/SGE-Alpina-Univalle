import uuid
from django import forms
from django.core.exceptions import ValidationError
from django.forms import inlineformset_factory
from .models import Factura, DetalleFactura, Cliente, Producto


class FacturaForm(forms.ModelForm):
    class Meta:
        model = Factura
        fields = [
            'nit', 'razon_social', 'direccion', 'numero_factura',
            'fecha_hora_emision', 'metodo_pago', 'id_cliente',
        ]
        widgets = {
            'nit': forms.TextInput(attrs={'class': 'form-control'}),
            'razon_social': forms.TextInput(attrs={'class': 'form-control'}),
            'direccion': forms.TextInput(attrs={'class': 'form-control'}),
            'numero_factura': forms.NumberInput(attrs={'class': 'form-control'}),
            'fecha_hora_emision': forms.DateTimeInput(attrs={
                'class': 'form-control', 'type': 'datetime-local',
            }),
            'metodo_pago': forms.Select(
                choices=[
                    ('Efectivo', 'Efectivo'),
                    ('Tarjeta', 'Tarjeta'),
                    ('Transferencia', 'Transferencia'),
                ],
                attrs={'class': 'form-control'},
            ),
            'id_cliente': forms.Select(attrs={'class': 'form-control'}),
        }
        labels = {
            'nit': 'NIT',
            'razon_social': 'Razón social',
            'direccion': 'Dirección',
            'numero_factura': 'Número de factura',
            'fecha_hora_emision': 'Fecha y hora de emisión',
            'metodo_pago': 'Método de pago',
            'id_cliente': 'Cliente',
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Si ya existe (factura ya emitida), todo el formulario es de solo lectura
        if self.instance and self.instance.pk:
            for field in self.fields.values():
                field.disabled = True
                field.required = False

    def clean_numero_factura(self):
        numero_factura = self.cleaned_data.get('numero_factura')

        if self.instance and self.instance.pk:
            return self.instance.numero_factura

        if numero_factura is not None and numero_factura <= 0:
            raise ValidationError('El número de factura debe ser positivo.')

        if Factura.objects.filter(numero_factura=numero_factura).exists():
            raise ValidationError('Ya existe una factura con este número.')

        return numero_factura

    def clean_nit(self):
        nit = self.cleaned_data.get('nit')
        if nit:
            nit = nit.strip()
        return nit


class DetalleFacturaForm(forms.ModelForm):
    class Meta:
        model = DetalleFactura
        fields = ['id_producto', 'cantidad', 'precio_unitario']
        widgets = {
            'id_producto': forms.Select(attrs={'class': 'form-control'}),
            'cantidad': forms.NumberInput(attrs={'class': 'form-control', 'min': 1}),
            'precio_unitario': forms.NumberInput(attrs={'class': 'form-control', 'step': '0.01'}),
        }
        labels = {
            'id_producto': 'Producto',
            'cantidad': 'Cantidad',
            'precio_unitario': 'Precio unitario',
        }

    def clean_cantidad(self):
        cantidad = self.cleaned_data.get('cantidad')
        if cantidad is not None and cantidad <= 0:
            raise ValidationError('La cantidad debe ser mayor que cero.')
        return cantidad

    def clean_precio_unitario(self):
        precio_unitario = self.cleaned_data.get('precio_unitario')
        if precio_unitario is not None and precio_unitario <= 0:
            raise ValidationError('El precio unitario debe ser mayor que cero.')
        return precio_unitario

    def save(self, commit=True):
        instance = super().save(commit=False)
        if not instance.pk:
            # Genera el PK manual ya que id_detalle_factura no es autoincremental
            instance.id_detalle_factura = uuid.uuid4().hex[:30]
        if commit:
            instance.save()
        return instance


DetalleFacturaFormSet = inlineformset_factory(
    Factura,
    DetalleFactura,
    form=DetalleFacturaForm,
    fk_name='id_factura',
    extra=1,
    can_delete=True,   # solo aplica mientras se arma la factura, antes de guardar
    min_num=1,
    validate_min=True,
)