USE bdprojetofinal1;
-- Consulta: Obter todos os clientes
SELECT * FROM clientes;
select * from pedidos;
select * from produtos;
select * from itens_pedido;

-- Consulta: Obter todos os pedidos de um determinado cliente (com base no ID do cliente)
SELECT * FROM pedidos WHERE cliente_id = 3;

-- Consulta: Obter todos os pedidos e seus respectivos clientes
SELECT p.id AS pedido_id, p.data_pedido, c.nome AS cliente_nome
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;

-- Listar os itens de um pedido específico (por exemplo, pedido com ID 1):
SELECT * FROM itens_pedido WHERE pedido_id = 1;

-- Listar os produtos associados a um pedido específico (por exemplo, pedido com ID 1):
SELECT p.* 
FROM produtos p
INNER JOIN itens_pedido ip ON p.id = ip.produto_id
WHERE ip.pedido_id = 1;

-- Calcular o valor total de um pedido específico (por exemplo, pedido com ID 1):
SELECT SUM(ip.quantidade * ip.preco_unitario) AS valor_total
FROM itens_pedido ip
WHERE ip.pedido_id = 1;
