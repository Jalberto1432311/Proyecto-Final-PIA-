// Función de inicialización del mapa
    function initMap() {
      // Coordenadas del centro del mapa
      var center = { lat: TU_LATITUD, lng: TU_LONGITUD };

      // Opciones del mapa
      var mapOptions = {
        zoom: 10, // Nivel de zoom inicial
        center: center // Centro del mapa
      };

      // Crea el mapa en el contenedor especificado
      var map = new google.maps.Map(document.getElementById('map'), mapOptions);

      // Puedes agregar marcadores, líneas, polígonos, etc., aquí según tus necesidades
    }