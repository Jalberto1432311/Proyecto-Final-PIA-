// Función para mostrar el mensaje de error cuando se envía el formulario
document.getElementById("login-form").addEventListener("submit", function(event) {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    // Aquí puedes agregar tu lógica para verificar el usuario y la contraseña
    // Si el usuario no está registrado, muestra el mensaje de error
    if (!usuarioRegistrado(email, password)) {
        document.getElementById("error-message").style.display = "block";
        event.preventDefault(); // Evitar que se envíe el formulario
    }
});

// Función de ejemplo para verificar si el usuario está registrado
function usuarioRegistrado(email, password) {
    // Aquí puedes implementar tu lógica real para verificar si el usuario está registrado
    // Por ejemplo, puedes hacer una llamada a una base de datos o a un servicio externo
    // En este ejemplo, simplemente comparamos el email y la contraseña con valores estáticos
    return email === "usuario@example.com" && password === "contraseña";
}