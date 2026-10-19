
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



-- 10 pedidos (la clienta 6 no tiene pedidos a propósito)
INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-09-01', 'entregado'),
(1, '2026-09-08', 'entregado'),
(1, '2026-09-20', 'pendiente'),
(2, '2026-09-03', 'entregado'),
(2, '2026-09-15', 'cancelado'),
(3, '2026-09-10', 'entregado'),
(3, '2026-09-22', 'entregado'),
(3, '2026-10-02', 'pendiente'),
(4, '2026-10-05', 'entregado'),
(5, '2026-10-10', 'pendiente');

-- 25 líneas de detalle (pedido_id, producto_id, cantidad, precio_unitario)
INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 2, 12.00),
(1, 5, 1, 18.50),
(1, 7, 4, 3.50),
(2, 4, 6, 15.00),
(2, 8, 2, 7.00),
(2, 2, 1, 9.50),
(3, 9, 1, 28.00),
(3, 11, 2, 16.50),
(3, 12, 3, 4.00),
(4, 3, 3, 6.00),
(4, 6, 2, 5.50),
(4, 1, 1, 12.00),
(5, 10, 2, 8.00),
(5, 12, 5, 4.00),
(5, 7, 6, 3.50),
(6, 4, 4, 15.00),
(6, 5, 2, 18.50),
(7, 2, 3, 9.50),
(7, 6, 1, 5.50),
(8, 9, 2, 28.00),
(8, 10, 1, 8.00),
(9, 11, 1, 16.50),
(9, 8, 3, 7.00),
(10, 1, 3, 12.00),
(10, 3, 2, 6.00);