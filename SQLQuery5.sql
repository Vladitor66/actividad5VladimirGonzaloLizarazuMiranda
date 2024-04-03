CREATE DATABASE ACTIVIDAD5

CREATE TABLE Venta (
    IdVenta INT IDENTITY(1,1) NOT NULL,
    FechaVenta DATE NOT NULL,
    TotalVenta DECIMAL(10, 2)NOT NULL,
	PRIMARY KEY (IdVenta)
);

CREATE TABLE Producto (
    IDProducto INT IDENTITY(1,1) NOT NULL,
    NombreProducto NVARCHAR(100) NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (IDProducto)
);

CREATE TABLE DetalleVenta (
    IDDetalleVenta INT IDENTITY(1,1) NOT NULL,
    IDVenta INT NOT NULL,
    IDProducto INT NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    TotalDetalle DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (IDDetalleVenta),
    FOREIGN KEY (IDVenta) REFERENCES Venta(IdVenta),
    FOREIGN KEY (IDProducto) REFERENCES Producto(IDProducto)
);

INSERT INTO Venta (FechaVenta, TotalVenta)
VALUES 
    ('2023-01-01', 150.00),
    ('2023-02-02', 200.50),
    ('2023-03-03', 175.25),
    ('2023-04-04', 220.75),
    ('2023-05-05', 300.00),
    ('2023-06-06', 180.50),
    ('2023-07-07', 250.75),
    ('2023-08-08', 195.00),
    ('2023-09-09', 210.25),
    ('2023-04-10', 275.50);

INSERT INTO Producto (NombreProducto, PrecioUnitario)
VALUES 
    ('Calzon', 25.00),
    ('soda', 35.50),
    ('coca', 50.25),
    ('cortina', 15.75),
    ('colchom', 10.00),
    ('peluche', 20.50),
    ('medias', 12.75),
    ('vaso', 8.00),
    ('casco', 18.25),
    ('moto', 10.50);


INSERT INTO DetalleVenta (IDVenta, IDProducto, Cantidad, PrecioUnitario, TotalDetalle)
VALUES 
    (1, 1, 2, 25.00, 50.00),
    (1, 2, 1, 35.50, 35.50),
    (2, 3, 1, 50.25, 50.25),
    (2, 4, 3, 15.75, 47.25),
    (3, 5, 2, 10.00, 20.00),
    (3, 6, 1, 20.50, 20.50),
    (4, 7, 2, 12.75, 25.50),
    (4, 8, 4, 8.00, 32.00),
    (5, 9, 1, 18.25, 18.25),
    (5, 10, 3, 10.50, 31.50);