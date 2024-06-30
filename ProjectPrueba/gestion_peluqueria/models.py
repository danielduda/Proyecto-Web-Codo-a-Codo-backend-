from typing import Any
from django.db import models


class Producto(models.Model):
    nombre = models.CharField(max_length=200, verbose_name='Nombre')
    precio = models.DecimalField(max_digits=10, decimal_places=2, verbose_name='Precio' )
    imagen = models.ImageField(upload_to='imagenes/',verbose_name='Imagen', null=True, blank=True)

    def __str__(self):   #define cómo se representará una instancia del modelo como una cadena de texto. 
       
        return self.nombre
    
    
    def delete(self,using=None, keep_parents=False):
        self.imagen.storage.delete(self.imagen.name)
        super().delete()


class Carrito(models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField(default=1)

    def __str__(self):
        return f"{self.cantidad} x {self.producto.nombre}"

   

   
class Turno(models.Model):
    nombre = models.CharField(max_length=100)
    fecha = models.DateField()
    hora = models.TimeField()
  
    
    def __str__(self):
        texto = '{0} {1} {2}'
        return texto.format(self.nombre, self.fecha, self.hora)

