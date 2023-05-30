CREATE TABLE Autores (
    id_autor INT PRIMARY KEY,
    nombre VARCHAR(100),
    nacionalidad VARCHAR(100)
);
CREATE TABLE Libros (
    id_libro INT PRIMARY KEY,
    titulo VARCHAR(100),
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);
CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY,
    id_libro INT,
    fecha_venta DATE,
    cantidad INT,
    FOREIGN KEY (id_libro) REFERENCES Libros(id_libro)
);
