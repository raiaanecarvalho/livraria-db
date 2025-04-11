
-- Criação da tabela produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INTEGER NOT NULL
);

-- Inserindo registros na tabela produtos
INSERT INTO produtos (nome, preco, estoque) VALUES 
('O Pequeno Príncipe', 29.90, 10),
('Dom Casmurro', 34.50, 8),
('A Revolução dos Bichos', 24.99, 15);

-- Criação da tabela pedidos
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo registros na tabela pedidos
INSERT INTO pedidos (produto_id, quantidade, data_pedido) VALUES
(1, 2, '2025-04-10'),
(2, 1, '2025-04-09'),
(3, 3, '2025-04-08');

