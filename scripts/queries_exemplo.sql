-- Exemplo de consulta: produtos com estoque abaixo de 10
SELECT * FROM produtos WHERE estoque < 10;

-- Exemplo de consulta: pedidos realizados em abril de 2025
SELECT * FROM pedidos WHERE strftime('%Y-%m', data_pedido) = '2025-04';

-- Exemplo de consulta: total de pedidos por produto
SELECT produto_id, SUM(quantidade) AS total_vendido
FROM pedidos
GROUP BY produto_id;
