from django.urls import path, include
from . import views
from django.conf import settings #importamos settings para las imágenes
from django.contrib.staticfiles.urls import static #ya podemos acceder a la ruta de la imagen desde el navegador y visualizar la imagen
from .views import tienda, agregar_al_carrito, eliminar_del_carrito, actualizar_carrito
from .views import crear



urlpatterns = [
    
     path('', views.index, name='index'),
     path ('base/', views.base, name='base'),
     path('home/', views.home, name='home'),
     path('servicios/', views.servicios, name='servicios'),
     path('contacto/', views.contacto, name='contacto'),
     path ('sucursales/', views.sucursales, name='sucursales'),
     path('nosotros/', views.nosotros, name='nosotros'),
     path('tienda/', views.tienda, name='tienda'),

     path ('administrador/', views.administrador, name='administrador'),
     path ('crear/', views.crear, name='crear'),
     path('eliminar/<int:id>', views.eliminar, name='eliminar'),
     path('administrador/editar/<int:id>/', views.editar, name='editar'),
     path ('baseadmin/', views.baseadmin, name='baseadmin'),
     path ('editar/', views.editar, name='editar'),
     path ('form/', views.form, name='form'),

    
     path('compra/', views.compra, name='compra'),
     path('agregar/<int:producto_id>/', agregar_al_carrito, name='agregar_al_carrito'),
     path('eliminar/<int:producto_id>/', eliminar_del_carrito, name='eliminar_del_carrito'),
     path('actualizar/<int:producto_id>/<int:cantidad>/', actualizar_carrito, name='actualizar_carrito'),

     path('gestionTurno/', views.gestionTurno, name='gestionTurno'),
     path('registrarTurno/', views.registrarTurno),
     path('eliminarTurno/<id>', views.eliminarTurno),
     path('edicionTurno/<id>', views.edicionTurno),
     path('editarTurno/', views.editarTurno),
     path('accounts/', include('django.contrib.auth.urls')),
     path('logout/', views.exit, name='exit'),
     
  
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) #la carga de imágenes


