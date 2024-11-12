--Procedo a incluir los datos entregados en la actividad formativa

--Tabla Clientes
--drop table Clientes; 
CREATE TABLE Clientes (
    customer_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    apellido VARCHAR2(50) NOT NULL,
    fecha_registro DATE DEFAULT SYSDATE,
    email VARCHAR2(100),
    telefono VARCHAR2(20)
);


-- Tabla Productos
--drop table Productos;
CREATE TABLE Productos (
    product_id NUMBER PRIMARY KEY,
    nombre_producto VARCHAR2(100) NOT NULL,
    categoria VARCHAR2(50),
    precio NUMBER(10, 2) CHECK (precio >= 0),
    stock NUMBER(10) CHECK (stock >= 0)
);

-- Tabla Personal de Ventas
--drop table Personal_de_Ventas;
CREATE TABLE Personal_de_Ventas (
    staff_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    apellido VARCHAR2(50) NOT NULL,
    email VARCHAR2(100),
    telefono VARCHAR2(20)
);

-- Tabla Ventas
--DROP TABLE Ventas;
CREATE TABLE Ventas (
    sale_id NUMBER PRIMARY KEY,
    customer_id NUMBER REFERENCES Clientes(customer_id),
    product_id NUMBER REFERENCES Productos(product_id),
    cantidad NUMBER(5) CHECK (cantidad > 0),
    fecha_venta DATE DEFAULT SYSDATE,
    total_venta NUMBER(10, 2),
    staff_id NUMBER REFERENCES Personal_de_Ventas(staff_id)
);

--Procedo a poblar tabla clientes
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (1, 'Juan', 'Pérez', DATE '2023-05-10', 'juan.perez@example.com', '123456789');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (2, 'Ana', 'López', DATE '2023-06-12', 'ana.lopez@example.com', '987654321');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (3, 'Carlos', 'García', DATE '2023-07-15', 'carlos.garcia@example.com', '555555555');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (4, 'Laura', 'Martínez', DATE '2023-08-10', 'laura.martinez@example.com', '444444444');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (5, 'Sofía', 'Díaz', DATE '2023-09-18', 'sofia.diaz@example.com', '666666666');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (6, 'Lucas', 'Mendoza', DATE '2023-10-02', 'lucas.mendoza@example.com', '333333333');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (7, 'Juliana', 'Torres', DATE '2023-11-05', 'juliana.torres@example.com', '222222222');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (8, 'Pedro', 'Ramírez', DATE '2023-08-08', 'pedro.ramirez@example.com', '111111111');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (9, 'Marta', 'González', DATE '2023-05-20', 'marta.gonzalez@example.com', '777777777');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (10, 'Luis', 'Herrera', DATE '2023-07-30', 'luis.herrera@example.com', '888888888');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (11, 'Carmen', 'Jiménez', DATE '2023-09-21', 'carmen.jimenez@example.com', '999999999');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (12, 'Gabriel', 'Ortiz', DATE '2023-10-10', 'gabriel.ortiz@example.com', '555123123');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (13, 'Raúl', 'Castro', DATE '2023-06-15', 'raul.castro@example.com', '444123123');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (14, 'Mariana', 'Morales', DATE '2023-11-01', 'mariana.morales@example.com', '333123123');
INSERT INTO Clientes (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES (15, 'Ricardo', 'Vargas', DATE '2023-08-25', 'ricardo.vargas@example.com', '222123123');

--Procedo a poblar tabla productos
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(1, 'Laptop X', 'Portátiles', 1500.00, 10);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(2, 'Monitor UltraHD', 'Monitores', 300.00, 20);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(3, 'Teclado Mecánico', 'Accesorios', 100.00, 50);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(4, 'Mouse Inalámbrico', 'Accesorios', 40.00, 30);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(5, 'Impresora Láser', 'Impresoras', 200.00, 15);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(6, 'Smartphone Pro', 'Teléfonos', 1200.00, 5);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(7, 'Tablet Z', 'Tabletas', 400.00, 8);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(8, 'Router Wi-Fi', 'Redes', 70.00, 25);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(9, 'Proyector HD', 'Proyectores', 500.00, 7);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(10, 'Cámara Web HD', 'Accesorios', 50.00, 45);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(11, 'Auriculares Bluetooth', 'Audio', 80.00, 35);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(12, 'Parlante Portátil', 'Audio', 120.00, 20);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(13, 'SSD 1TB', 'Almacenamiento', 150.00, 12);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(14, 'Disco Duro Externo 2TB', 'Almacenamiento', 100.00, 18);
INSERT INTO Productos (product_id, nombre_producto, categoria, precio, stock) VALUES(15, 'UPS', 'Energía', 250.00, 6);

--Procedo a poblar tabla personal de ventas
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (1, 'Daniel', 'Lara', 'daniel.lara@example.com', '123450000');
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (2, 'Sergio', 'Romero', 'sergio.romero@example.com', '123450001');
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (3, 'Paula', 'Vega', 'paula.vega@example.com', '123450002');
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (4, 'Andrea', 'Meza', 'andrea.meza@example.com', '456450003');
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (5, 'Mario', 'Pacheco', 'mario.pacheco@example.com', '456450004');
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (6, 'Laura', 'Silva', 'laura.silva@example.com', '456450005');
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (7, 'Jorge', 'Nuñez', 'jorge.nunez@example.com', '789450006');
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (8, 'Claudia', 'Ríos', 'claudia.rios@example.com', '789450007');
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (9, 'Raquel', 'Espinoza', 'raquel.espinoza@example.com', '789450008');
INSERT INTO Personal_de_Ventas (staff_id, nombre, apellido, email, telefono) VALUES (10, 'Carlos', 'Ramos', 'carlos.ramos@example.com', '789450009');

--Procedo a poblar tabla ventas
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (1, 1, 1, 1,   DATE '2024-09-20', 1500.00, 1);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (2, 2, 3, 2,   DATE '2024-10-05', 200.00, 2);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (3, 3, 5, 1,   DATE '2024-10-10', 200.00, 3);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (4, 4, 7, 1,   DATE '2024-09-12', 400.00, 4);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (5, 5, 2, 1,   DATE '2024-09-22', 300.00, 5);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (6, 6, 1, 1,   DATE '2024-10-20', 1500.00, 6);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (7, 7, 6, 1,   DATE '2024-10-30', 1200.00, 7);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (8, 8, 10, 3,  DATE '2024-08-12', 150.00, 8);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (9, 9, 8, 1,   DATE '2024-09-18', 70.00, 9);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (10, 10, 11, 2,DATE '2024-10-05', 160.00, 10);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (11, 11, 13, 1,DATE '2024-10-15', 150.00, 2);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (12, 12, 14, 1,DATE '2024-09-25', 100.00, 3);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (13, 13, 15, 1,DATE '2024-10-25', 250.00, 4);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (14, 14, 12, 2,DATE '2024-11-05', 240.00, 5);
INSERT INTO Ventas (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta, staff_id) VALUES (15, 15, 9, 1, DATE '2024-11-07', 500.00, 6);

-- Visualizar tablas pobladas
SELECT * FROM Ventas;
SELECT * FROM Clientes;
SELECT * FROM Productos;
SELECT * FROM Personal_de_Ventas;

--primer desafio establecido en la instruccion formativa
SELECT 
   Personal_de_Ventas.nombre || ' ' || Personal_de_ventas.apellido AS nombre_completo,
   COUNT(Ventas.sale_id) AS total_ventas,
   SUM(Ventas.total_venta) AS ingreso_total
FROM
   Personal_de_Ventas
JOIN
   Ventas ON Personal_de_Ventas.staff_id = Ventas.staff_id
WHERE
   EXTRACT(YEAR FROM Ventas.fecha_venta) = EXTRACT(YEAR FROM SYSDATE)
GROUP BY
   Personal_de_Ventas.nombre, Personal_de_Ventas.apellido
ORDER BY
   ingreso_total DESC;

--segundo desafio establecido en la instruccion formativa   
SELECT 
    Clientes.nombre || ' ' || Clientes.apellido AS nombre_completo,
    COUNT(Ventas.sale_id) AS total_ventas,
    MIN(Ventas.fecha_venta) AS primera_venta,
    MAX(Ventas.fecha_venta) AS ultima_venta
FROM 
    Clientes
JOIN 
    Ventas ON Clientes.customer_id = Ventas.customer_id
GROUP BY 
    Clientes.nombre, Clientes.apellido
HAVING 
    COUNT(Ventas.sale_id) >= 1
ORDER BY 
    total_ventas DESC;
--Mencionar que en la tabla como todos los clientes tienen solo una venta
--tanto la fecha de la primera venta como de la segunda venta será la misma

--Desafios planteados por el profesor
--Primer desafio
SELECT
  Clientes.nombre || ' ' || Clientes.apellido AS nombre_cliente,
  Productos.nombre_producto AS nombre_producto,
  Ventas.cantidad AS cantidad_vendidad,
  Ventas.fecha_venta AS fecha_venta,

  CASE
    WHEN Productos.categoria IN ('Monitores','Portátiles','Proyectores','Impresoras') THEN Ventas.fecha_venta +90
    WHEN Productos.categoria IN ('Almacenamiento','Energía') THEN Ventas.fecha_venta +180
    ELSE Ventas.fecha_venta +30
  END AS fecha_final_garantia,

  CASE
   WHEN
    (CASE
       WHEN Productos.categoria IN ('Monitores','Portátiles','Proyectores','Impresoras')THEN Ventas.fecha_venta +90
       WHEN Productos.categoria IN ('Almacenamiento','Energía') THEN Ventas.fecha_venta +180 
       ELSE Ventas.fecha_venta +30
     END) >= SYSDATE
   THEN 'SI'
   ELSE 'NO'
  END AS garantia_vigente

FROM
  Ventas
JOIN
  Clientes ON Ventas.customer_id = Clientes.customer_id
JOIN
  Productos ON Ventas.Product_id = Productos.product_id
WHERE
  Ventas.fecha_venta >= ADD_MONTHS(SYSDATE, -3)
ORDER BY
  Ventas.fecha_venta DESC;
  
--Segundo desafio profesor
SELECT 
    UPPER(Personal_de_Ventas.nombre || ' ' || Personal_de_Ventas.apellido) AS nombre_completo,
    CASE 
        WHEN SUBSTR(Personal_de_Ventas.telefono, 1, 3) = '123' THEN 'Zona Alpha'
        WHEN SUBSTR(Personal_de_Ventas.telefono, 1, 3) = '456' THEN 'Zona Beta'
        WHEN SUBSTR(Personal_de_Ventas.telefono, 1, 3) = '789' THEN 'Zona Gamma'
        ELSE 'Zona Desconocida'
    END AS zona,
    COALESCE(SUM(Ventas.total_venta), 0) AS total_ventas
FROM 
    Personal_de_Ventas
LEFT JOIN 
    Ventas ON Personal_de_Ventas.staff_id = Ventas.staff_id
GROUP BY 
    UPPER(Personal_de_Ventas.nombre || ' ' || Personal_de_Ventas.apellido),
    CASE 
        WHEN SUBSTR(Personal_de_Ventas.telefono, 1, 3) = '123' THEN 'Zona Alpha'
        WHEN SUBSTR(Personal_de_Ventas.telefono, 1, 3) = '456' THEN 'Zona Beta'
        WHEN SUBSTR(Personal_de_Ventas.telefono, 1, 3) = '789' THEN 'Zona Gamma'
        ELSE 'Zona Desconocida'
    END
HAVING 
    COALESCE(SUM(Ventas.total_venta), 0) >= 1000
ORDER BY 
    total_ventas DESC;

--tercer desafio profesor
SELECT 
    Clientes.nombre || ' ' || Clientes.apellido AS nombre_cliente,
    Clientes.email AS email,
    COALESCE(Productos.nombre_producto, 'Sin compras') AS nombre_producto,
    COALESCE(Ventas.cantidad, 0) AS cantidad_vendida
FROM 
    Clientes
LEFT JOIN 
    Ventas ON Clientes.customer_id = Ventas.customer_id
LEFT JOIN 
    Productos ON Ventas.product_id = Productos.product_id
WHERE 
    Ventas.product_id IS NULL OR Productos.product_id IS NOT NULL
ORDER BY 
    Clientes.nombre, Clientes.apellido;
    
--cuarto desafio profesor
SELECT 
    Productos.nombre_producto AS nombre_producto,
    Clientes.nombre || ' ' || Clientes.apellido AS nombre_cliente,
    COALESCE(Ventas.cantidad, 0) AS cantidad_comprada
FROM 
    Productos
CROSS JOIN 
    Clientes
LEFT JOIN 
    Ventas ON Productos.product_id = Ventas.product_id 
           AND Clientes.customer_id = Ventas.customer_id
ORDER BY 
    Productos.nombre_producto, Clientes.nombre, Clientes.apellido;
