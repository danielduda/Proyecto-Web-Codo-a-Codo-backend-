from django.shortcuts import render, redirect, get_object_or_404
from .models import Turno
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from .models import Producto, Carrito 
from .forms import ProductoForm

def index(request):
    return render(request, 'gestion_peluqueria/index.html')

def base(request):
    return render(request, 'gestion_peluqueria/base.html')

def administrador(request):
    context = get_context_data()
    print(context)
    return render(request, 'administrador/admin.html', context)

def baseadmin(request):
    return render(request, 'administrador/baseadmin.html')


def crear(request): 
    formulario=ProductoForm(request.POST or None, request.FILES or None) #identificar los elementos e igualarlos a formulario
    if formulario.is_valid():
        formulario.save()
        return redirect('administrador')
    return render(request, 'administrador/crear.html',{'formulario': formulario}) 



def editar (request, id):
     producto = Producto.objects.get(id=id)
     formulario = ProductoForm(request.POST or None, request.FILES or None, instance=producto)
     if formulario.is_valid() and request.POST:
         formulario.save()
         return redirect('administrador')
     return render(request, 'administrador/editar.html', {'formulario': formulario})



def eliminar (request, id):
    producto = Producto.objects.get(id=id)
    producto.delete()
    return redirect('administrador')


def form(request):
    return render(request, 'administrador/form.html')



def home(request):
    return render(request, 'gestion_peluqueria/home.html')

def servicios(request):
    return render(request, 'gestion_peluqueria/servicios.html')

def contacto(request):
    return render(request, 'gestion_peluqueria/contacto.html')

def sucursales(request):
    return render(request, 'gestion_peluqueria/sucursales.html')


def nosotros(request):
    return render(request, 'gestion_peluqueria/nosotros.html')

def get_context_data():
    productos = Producto.objects.all()
    carrito = Carrito.objects.all()  # Obtiene todos los items del carrito
    return {
        'productos': productos,
        'carrito': carrito
    }

def compra(request):
    context = get_context_data()
    return render(request, 'gestion_peluqueria/compra.html', context)

def tienda(request):
    context = get_context_data()
    return render(request, 'gestion_peluqueria/tienda.html', context)


def agregar_al_carrito(request, producto_id,):
    producto = get_object_or_404(Producto, id=producto_id) # Obtiene el producto o devuelve un error 404 si no existe
    carrito_item, created = Carrito.objects.get_or_create(producto=producto) # Obtiene o crea un ítem en el carrito
    if not created:  # Si el ítem ya existía en el carrito
        carrito_item.cantidad += 1 # Incrementa la cantidad del producto en el carrito
        carrito_item.save() # Guarda los cambios en la base de datos
    return redirect('compra')

def eliminar_del_carrito(request, producto_id):
    producto = get_object_or_404(Producto, id=producto_id)
    carrito_item = Carrito.objects.get(producto=producto)
    carrito_item.delete()
    return redirect('compra')


def actualizar_carrito(request, producto_id, cantidad):
    producto = get_object_or_404(Producto, id=producto_id)
    
    # Obtener el item del carrito asociado al producto (si existe)
    carrito_item, created = Carrito.objects.get_or_create(producto=producto)
    
    # Actualizar la cantidad del producto en el carrito
    carrito_item.cantidad = cantidad
    
    # Si la cantidad es cero, eliminar el ítem del carrito
    if carrito_item.cantidad == 0:
        carrito_item.delete()
    else:
        carrito_item.save()
    
    # Calcular el total del carrito después de la actualización
    total_carrito = calcular_total_carrito(request)
    
    # Obtener todos los elementos del carrito para mostrar en la página
    carrito = Carrito.objects.all()
    
    # Renderizar la página de compra con el total del carrito y los elementos del carrito
    return render(request, 'gestion_peluqueria/compra.html', {'carrito': carrito, 'total_carrito': total_carrito})

def calcular_total_carrito(request):
    carrito = Carrito.objects.all()
    total_carrito = sum(item.producto.precio * item.cantidad for item in carrito)
    return total_carrito


# Codigo ClassTurno

@login_required
def gestionTurno(request):
    turnosListados = Turno.objects.all()
    return render(request, 'gestion_peluqueria/gestionTurno.html', {'turnos': turnosListados})

def registrarTurno(request):
    nombre=request.POST['nombre']
    fecha=request.POST['fecha']
    hora=request.POST['hora']
    
    
    turno = Turno(
        nombre=nombre, fecha=fecha, hora=hora)
    turno.save()
    
    return redirect('/gestionTurno/') 

def eliminarTurno(request, id):
    eliminarturno = get_object_or_404(Turno, id=id)
    eliminarturno.delete()
    
    return redirect('/gestionTurno/')

def edicionTurno(request, id):
    turno = get_object_or_404(Turno, id=id)
    return render(request, 'gestion_peluqueria/edicionTurno.html', {"turno": turno})

def editarTurno(request):
    id=request.POST['id']
    nombre=request.POST['nombre']
    fecha=request.POST['fecha']
    hora=request.POST['hora']
    
   
    turno = Turno.objects.get(id=id)
    turno.nombre = nombre
    turno.fecha = fecha
    turno.hora = hora
    turno.save()
    
    return redirect('/gestionTurno/') 

# CODIGO LOGIN Y LOGOUT

def exit(request):
    logout(request)
    return redirect('/home/')

