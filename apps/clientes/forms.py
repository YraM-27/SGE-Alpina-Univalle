from django import forms
from .models import Cliente

class ClienteForm(forms.ModelForm):
    class Meta:
        model = Cliente
        fields = [
            'id_cliente', 'tipo_id', 'nombres', 'apellidos',
            'habeas_data', 'ciudad', 'direccion_op', 'direccion_res',
            'telefono', 'email', 'representante', 'tipo_regimen',
        ]
        widgets = {
            'id_cliente': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo_id': forms.TextInput(attrs={'class': 'form-control'}),
            'nombres': forms.TextInput(attrs={'class': 'form-control'}),
            'apellidos': forms.TextInput(attrs={'class': 'form-control'}),
            'habeas_data': forms.CheckboxInput(attrs={'class': 'form-check-input'}),
            'ciudad': forms.TextInput(attrs={'class': 'form-control'}),
            'direccion_op': forms.TextInput(attrs={'class': 'form-control'}),
            'direccion_res': forms.TextInput(attrs={'class': 'form-control'}),
            'telefono': forms.TextInput(attrs={'class': 'form-control'}),
            'email': forms.EmailInput(attrs={'class': 'form-control'}),
            'representante': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo_regimen': forms.TextInput(attrs={'class': 'form-control'}),
        }

    def clean_id_cliente(self):
        return self.cleaned_data['id_cliente']