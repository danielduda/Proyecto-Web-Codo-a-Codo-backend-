from django.shortcuts import render

# Create your views here.


def index(request):
    return render(request, 'gestion_peluqueria/index.html')

def base(request):
    return render(request, 'gestion_peluqueria/base.html')


def home(request):
    return render(request, 'gestion_peluqueria/home.html')

def servicios(request):
    return render(request, 'gestion_peluqueria/servicios.html')

def contacto(request):
    return render(request, 'gestion_peluqueria/contacto.html')

def sucursales(request):
    return render(request, 'gestion_peluqueria/sucursales.html')

def tienda(request):
    return render(request, 'gestion_peluqueria/tienda.html')

def nosotros(request):
    return render(request, 'gestion_peluqueria/nosotros.html')