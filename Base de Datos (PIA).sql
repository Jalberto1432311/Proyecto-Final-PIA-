-- Creación de la base de datos PIA --
CREATE DATABASE BasedeDatosPIA;
USE BasedeDatosPIA;

-- Creacion de las Tablas --

CREATE TABLE Categoria
(
    ID_Categoria INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Categoria VARCHAR(100) NOT NULL
);

CREATE TABLE Rol
(
    ID_Rol INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Rol VARCHAR(50) NOT NULL
);

CREATE TABLE Estado
(
    ID_Estado INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE Ciudad
(
    ID_Ciudad INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    ID_Estado INT,
    FOREIGN KEY (ID_Estado) REFERENCES Estado(ID_Estado)
);

CREATE TABLE Usuario
(
    ID_Usuario INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Usuario VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100),
    Edad INT,
    Sexo BIT,
    Telefono VARCHAR(15),
    Correo_Electronico VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    ID_Rol INT,
    ID_Ciudad INT,
    FOREIGN KEY (ID_Rol) REFERENCES Rol(ID_Rol),
    FOREIGN KEY (ID_Ciudad) REFERENCES Ciudad(ID_Ciudad)
);

CREATE TABLE Productos
(
    ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Producto VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(300),
    Precio DECIMAL(10, 2) NOT NULL,
    Imagen VARCHAR(255),
    Cantidad_Disponible INT,
    ID_Categoria INT,
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria)
);

CREATE TABLE Carrito
(
    ID_Usuario INT,
    ID_Producto INT,
    Fecha DATE,
    Cantidad INT NOT NULL,
    PRIMARY KEY (ID_Usuario, ID_Producto),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

CREATE TABLE Transacciones
(
    ID_Transaccion INT AUTO_INCREMENT PRIMARY KEY,
    Tipo ENUM('Compra', 'Venta', 'Pedido') NOT NULL,
    ID_Usuario INT,
    ID_Producto INT,
    Fecha DATE NOT NULL,
    Cantidad INT NOT NULL,
    Precio_Unitario DECIMAL(10, 2) NOT NULL,
    Precio_Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

CREATE TABLE Evento
(
    ID_Evento INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Evento VARCHAR(100) NOT NULL,
    Fecha DATE NOT NULL,
    Descripcion VARCHAR(300),
    ID_Categoria INT,
    ID_Estado INT,
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria),
    FOREIGN KEY (ID_Estado) REFERENCES Estado(ID_Estado)
);

CREATE TABLE Usuario_Evento
(
    ID_Usuario INT,
    ID_Evento INT,
    PRIMARY KEY (ID_Usuario, ID_Evento),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Evento) REFERENCES Evento(ID_Evento)
);

CREATE TABLE Foto
(
    ID_Foto INT AUTO_INCREMENT PRIMARY KEY,
    ID_Evento INT,
    URL VARCHAR(255) NOT NULL,
    FOREIGN KEY (ID_Evento) REFERENCES Evento(ID_Evento)
);

CREATE TABLE Privilegio
(
    ID_Privilegio INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Privilegio VARCHAR(100) NOT NULL
);

CREATE TABLE Rol_Privilegio
(
    ID_Rol INT,
    ID_Privilegio INT,
    PRIMARY KEY (ID_Rol, ID_Privilegio),
    FOREIGN KEY (ID_Rol) REFERENCES Rol(ID_Rol),
    FOREIGN KEY (ID_Privilegio) REFERENCES Privilegio(ID_Privilegio)
);

CREATE TABLE Usuario_Rol
(
    ID_Usuario INT,
    ID_Rol INT,
    PRIMARY KEY (ID_Usuario, ID_Rol),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Rol) REFERENCES Rol(ID_Rol)
);