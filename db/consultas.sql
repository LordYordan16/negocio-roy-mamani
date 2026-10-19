-- Consultas del negocio

-- 1. ¿Cuáles son los productos con el nombre de su categoría, ordenados por nombre?
SELECT p.id, p.nombre AS producto, c.nombre AS categoria, p.precio, p.stock
FROM productos p
JOIN categorias c ON c.id = p.categoria_id
ORDER BY p.nombre;

-- 2. ¿Qué productos tienen menos de 5 unidades en stock?
SELECT id, nombre, stock
FROM productos
WHERE stock < 5;

-- 3. ¿Cuál es el precio promedio de los productos por categoría?
SELECT c.nombre AS categoria, ROUND(AVG(p.precio), 2) AS precio_promedio
FROM categorias c
JOIN productos p ON p.categoria_id = c.id
GROUP BY c.id, c.nombre;

-- 4. ¿Qué pedidos hizo el cliente Carlos Quispe, con su fecha y estado?
SELECT p.id AS pedido, c.nombre AS cliente, p.fecha, p.estado
FROM pedidos p
JOIN clientes c ON c.id = p.cliente_id
WHERE c.nombre = 'Carlos Quispe';


-- 5. ¿Cuál es el total en dinero de cada pedido?
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total
FROM detalle_pedido
GROUP BY pedido_id
ORDER BY pedido_id;

-- 6. ¿Qué clientes tienen más de 2 pedidos?
SELECT c.nombre, COUNT(p.id) AS total_pedidos
FROM clientes c
JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.id, c.nombre
HAVING COUNT(p.id) > 2;

-- 7. Eliminar un cliente que no tiene pedidos (Ana Gutiérrez)
DELETE FROM clientes
WHERE email = 'ana.gutierrez@gmail.com'
  AND id NOT IN (SELECT cliente_id FROM pedidos);