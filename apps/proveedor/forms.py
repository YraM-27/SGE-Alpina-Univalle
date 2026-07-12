from django import forms
from .models import Proveedor, CuentaBancaria


class ProveedorForm(forms.ModelForm):
    banco = forms.CharField(
        label='Banco', max_length=30,
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: Bancolombia'})
    )
    tipo_cuenta = forms.CharField(
        label='Tipo de cuenta', max_length=30,
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ahorros o Corriente'})
    )
    num_cuenta = forms.CharField(
        label='Número de cuenta', max_length=30,
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: 89691085899'})
    )

    class Meta:
        model = Proveedor
        fields = [
            'id_proveedor', 'tipo_id', 'nombre',
            'habeas_data', 'ciudad', 'direccion_op', 'direccion_res',
            'telefono', 'email', 'representante', 'tipo_regimen',
            'rut', 'tiempo_entrega', 'persona_comercial', 'tipo_proveedor',
            'persona_cartera', 'persona_logistica', 'num_dias_pago', 'calificacion',
        ]
        widgets = {
            'id_proveedor': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo_id': forms.TextInput(attrs={'class': 'form-control'}),
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'habeas_data': forms.CheckboxInput(attrs={'class': 'form-check-input'}),
            'ciudad': forms.TextInput(attrs={'class': 'form-control'}),
            'direccion_op': forms.TextInput(attrs={'class': 'form-control'}),
            'direccion_res': forms.TextInput(attrs={'class': 'form-control'}),
            'telefono': forms.TextInput(attrs={'class': 'form-control'}),
            'email': forms.EmailInput(attrs={'class': 'form-control'}),
            'representante': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo_regimen': forms.TextInput(attrs={'class': 'form-control'}),
            'rut': forms.TextInput(attrs={'class': 'form-control'}),
            'tiempo_entrega': forms.NumberInput(attrs={'class': 'form-control', 'min': 0}),
            'persona_comercial': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo_proveedor': forms.TextInput(attrs={'class': 'form-control'}),
            'persona_cartera': forms.TextInput(attrs={'class': 'form-control'}),
            'persona_logistica': forms.TextInput(attrs={'class': 'form-control'}),
            'num_dias_pago': forms.NumberInput(attrs={'class': 'form-control', 'min': 0}),
            'calificacion': forms.NumberInput(attrs={'class': 'form-control', 'min': 1, 'max': 5}),
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        if self.instance and self.instance.pk and self.instance.id_cuenta_id:
            cuenta = self.instance.id_cuenta
            self.fields['banco'].initial = cuenta.nombre_banco
            self.fields['tipo_cuenta'].initial = cuenta.tipo_cuenta
            self.fields['num_cuenta'].initial = cuenta.num_cuenta

        self.order_fields([
            'id_proveedor', 'tipo_id', 'nombre', 'habeas_data', 'ciudad',
            'direccion_op', 'direccion_res', 'telefono', 'email', 'representante',
            'tipo_regimen', 'rut', 'tiempo_entrega', 'persona_comercial',
            'tipo_proveedor', 'persona_cartera', 'persona_logistica',
            'num_dias_pago', 'calificacion', 'banco', 'tipo_cuenta', 'num_cuenta',
        ])

    def clean_id_proveedor(self):
        return self.cleaned_data['id_proveedor']

    def clean_calificacion(self):
        calificacion = self.cleaned_data.get('calificacion')
        if calificacion is not None and not (1 <= calificacion <= 5):
            raise forms.ValidationError('La calificación debe estar entre 1 y 5.')
        return calificacion

    def save(self, commit=True):
        proveedor = super().save(commit=False)

        id_cuenta = f'CTA-{proveedor.id_proveedor}'
        cuenta, _ = CuentaBancaria.objects.update_or_create(
            id_cuenta=id_cuenta,
            defaults={
                'nombre_banco': self.cleaned_data['banco'],
                'tipo_cuenta': self.cleaned_data['tipo_cuenta'],
                'num_cuenta': self.cleaned_data['num_cuenta'],
            }
        )
        proveedor.id_cuenta = cuenta

        if commit:
            proveedor.save()
        return proveedor