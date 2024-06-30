
    document.getElementById('pagar-boton').addEventListener('click', function(event) {
        event.preventDefault(); // Esto previene que el enlace se ejecute inmediatamente.
        var totalCarrito = this.getAttribute('data-total');
      // Mostrar alerta con salto de línea
        alert('Gracias por su compra\nTotal del carrito: $' + totalCarrito);
        window.location.href = "/home";; // Redirige al usuario después de mostrar la alerta.
    });
