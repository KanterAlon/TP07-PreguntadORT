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