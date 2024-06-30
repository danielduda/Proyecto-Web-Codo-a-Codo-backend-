#plantilla que usaremos para visualizar de manera dinámica los formularios

from django import forms    
from .models import Producto

class ProductoForm(forms.ModelForm):
    class Meta:
        model = Producto
        fields = '__all__'