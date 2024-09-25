// ANIMACIONES

function estaEnPantalla(elemento) {
    const rect = elemento.getBoundingClientRect();
    return (
      rect.top >= 0 &&
      rect.left >= 0 &&
      rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
      rect.right <= (window.innerWidth || document.documentElement.clientWidth)
    );
}
  
function activarAnimaciones(elementoAnimar) {
    document.querySelectorAll('.' + elementoAnimar).forEach((animacion) => {
        if (estaEnPantalla(animacion)) {
        animacion.classList.add('activa');
        }
    });
}

// Mostrar el div al cargar la página
document.addEventListener('DOMContentLoaded', function() {
    // Seleccionamos el div
    var cuadrante = document.querySelector('.cuadrante-momentaneo');
    
    // Hacemos que el div sea visible
    cuadrante.style.display = 'block';
    
    // Después de 5 segundos, ocultamos el div
    setTimeout(function() {
        cuadrante.style.display = 'none';
    }, 5000); // 5000ms = 5 segundos
});