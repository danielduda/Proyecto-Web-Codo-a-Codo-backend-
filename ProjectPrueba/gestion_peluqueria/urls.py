from django.urls import path
from . import views

urlpatterns = [
     path('', views.index, name='index'),
     path ('base/', views.base, name='base'),
     path('home/', views.home, name='home'),
     path('servicios/', views.servicios, name='servicios'),
     path('contacto/', views.contacto, name='contacto'),
     path ('sucursales/', views.sucursales, name='sucursales'),
     path('tienda/', views.tienda, name='tienda'),
     path('nosotros/', views.nosotros, name='nosotros'),
  
]
