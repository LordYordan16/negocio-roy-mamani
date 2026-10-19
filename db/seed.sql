
-- 3 categorías
INSERT INTO categorias (nombre) VALUES
('Bebidas'),
('Snacks'),
('Limpieza');

-- 12 productos
INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
('Coca-Cola 2L', 1, 12.00, 40),
('Jugo del Valle 1L', 1, 9.50, 25),
('Agua Vital 2L', 1, 6.00, 3),
('Cerveza Paceña 620ml', 1, 15.00, 60),
('Papas Pringles', 2, 18.50, 20),
('Galletas Oreo', 2, 5.50, 4),
('Chocolate Sublime', 2, 3.50, 80),
('Maní salado 200g', 2, 7.00, 15),
('Detergente Omo 1kg', 3, 28.00, 12),
('Lavandina 1L', 3, 8.00, 2),
('Jabón líquido 500ml', 3, 16.50, 18),
('Esponja de cocina', 3, 4.00, 50);

-- 6 clientes
INSERT INTO clientes (nombre, telefono, email) VALUES
('Carlos Quispe', '71234567', 'carlos.quispe@gmail.com'),
('María Choque', '72345678', 'maria.choque@gmail.com'),
('Juan Mamani', '73456789', 'juan.mamani@hotmail.com'),
('Lucía Condori', '74567890', 'lucia.condori@gmail.com'),
('Pedro Flores', '75678901', 'pedro.flores@yahoo.com'),
('Ana Gutiérrez', '76789012', 'ana.gutierrez@gmail.com');


