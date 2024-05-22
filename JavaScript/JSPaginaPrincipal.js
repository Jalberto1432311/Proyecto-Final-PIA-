
//
//
// JS de la pantalla "Eventos"

function mostrarEvento(elemento) {
    // Obtener la información del evento clicado
    var imagen = elemento.querySelector('img').src;
    var nombre = elemento.querySelector('.nombre-eventos').textContent;
    var fecha = elemento.querySelector('.fecha-eventos').textContent;
    var hora = elemento.querySelector('.hora-eventos').textContent;
    var lugar = elemento.querySelector('.lugar-eventos').textContent;
    var descripcion = elemento.querySelector('.descripcion-eventos').textContent;
    var reglamento = elemento.querySelector('.reglamento-eventos').textContent;

    // Mostrar la información en el modal
    document.getElementById('modal-imagen-eventos').src = imagen;
    document.getElementById('modal-nombre-eventos').textContent = nombre;
    document.getElementById('modal-fecha-eventos').textContent = fecha;
    document.getElementById('modal-hora-eventos').textContent = hora;
    document.getElementById('modal-lugar-eventos').textContent = lugar;
    document.getElementById('modal-descripcion-eventos').textContent = descripcion;
    document.getElementById('modal-reglamento-eventos').textContent = reglamento;

    // Mostrar el modal y el overlay
    var eventoInfo = document.getElementById("evento-info-eventos");
    eventoInfo.style.display = "block";

    var overlay = document.getElementById("overlay-eventos");
    overlay.style.display = "block";
}

function cerrarEvento() {
    // Ocultar el modal y el overlay
    var eventoInfo = document.getElementById("evento-info-eventos");
    eventoInfo.style.display = "none";

    var overlay = document.getElementById("overlay-eventos");
    overlay.style.display = "none";
}


//
//
// JS de la pantalla "Galería"

function mostrarInformacion(elemento) {
    // Obtener el título y la fecha del elemento clicado
    var titulo = elemento.querySelector('.titulo-Galeria').textContent;
    var fecha = elemento.querySelector('.fecha-Galeria').textContent;

    // Construir el contenido de la información a mostrar
    var contenido = "<h2>" + titulo + "</h2>" +
                    "<p>Fecha: " + fecha + "</p>";

    // Mostrar la información en el contenedor
    var informacion = document.getElementById("informacion");
    informacion.innerHTML = contenido;
    informacion.style.display = "block";

    // Mostrar el fondo oscurecido
    var overlay = document.getElementById("overlay");
    overlay.style.display = "block";
}

function cerrarInformacion() {
    // Ocultar la información y el fondo oscurecido
    var informacion = document.getElementById("informacion");
    informacion.style.display = "none";

    var overlay = document.getElementById("overlay");
    overlay.style.display = "none";
}
