
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
}
