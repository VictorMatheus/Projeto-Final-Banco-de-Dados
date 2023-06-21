-- Criação do banco de dados
CREATE DATABASE bdprojetofinal1;

-- Utilização do banco de dados
USE bdprojetofinal1;

SET FOREIGN_KEY_CHECKS = 0;
SET FOREIGN_KEY_CHECKS = 1;
DROP TABLE pedidos;

-- Criação da tabela "clientes"
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  endereco VARCHAR(100),
  cidade VARCHAR(50),
  estado VARCHAR(50),
  cep VARCHAR(10)
);

-- Criação da tabela "pedidos"
CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  cliente_id INT,
  data_pedido DATE,
  valor_total DECIMAL(10,2),
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Criação da tabela "produtos"
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  descricao TEXT,
  preco DECIMAL(10,2)
);

-- Criação da tabela "itens_pedido"
CREATE TABLE itens_pedido (
  id INT PRIMARY KEY,
  pedido_id INT,
  produto_id INT,
  quantidade INT,
  preco_unitario DECIMAL(10,2),
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de dados na tabela "clientes"
INSERT INTO clientes (id, nome, endereco, cidade, estado, cep)
VALUES
  (1, 'João Silva', 'Rua A, 123', 'São Paulo', 'SP', '01234-567'),
  (2, 'Maria Santos', 'Avenida B, 456', 'Rio de Janeiro', 'RJ', '98765-432'),
  (3, 'Carlos Oliveira', 'Rua C, 789', 'Belo Horizonte', 'MG', '34567-890'),
  (4, 'Ana Costa', 'Avenida D, 789', 'Salvador', 'BA', '12345-678'),
  (5, 'José Oliveira', 'Rua E, 456', 'Fortaleza', 'CE', '87654-321'),
  (6, 'Mariana Fernandes', 'Rua F, 789', 'Recife', 'PE', '54321-876'),
  (7, 'Pedro Santos', 'Avenida G, 123', 'Porto Alegre', 'RS', '67890-123'),
  (8, 'Ana Maria', 'Rua H, 456', 'Curitiba', 'PR', '76543-210'),
  (9, 'Fernando Souza', 'Avenida I, 789', 'Manaus', 'AM', '54321-987'),
  (10, 'Juliana Pereira', 'Rua J, 123', 'Brasília', 'DF', '01234-876'),
  (11, 'Ricardo Lima', 'Avenida K, 456', 'Goiânia', 'GO', '98765-432'),
  (12, 'Patricia Santos', 'Rua L, 789', 'Vitória', 'ES', '34567-210'),
  (13, 'Luiz Ferreira', 'Avenida M, 123', 'Natal', 'RN', '87654-987'),
  (14, 'Camila Oliveira', 'Rua N, 456', 'Porto Velho', 'RO', '09876-543'),
  (15, 'Roberto Silva', 'Avenida O, 789', 'Teresina', 'PI', '87654-321'),
  (16, 'Amanda Costa', 'Rua P, 123', 'Florianópolis', 'SC', '76543-210'),
  (17, 'Rafaela Rodrigues', 'Avenida Q, 456', 'Maceió', 'AL', '54321-987'),
  (18, 'Diego Almeida', 'Rua R, 789', 'João Pessoa', 'PB', '01234-876'),
  (19, 'Fernanda Oliveira', 'Avenida S, 123', 'Macapá', 'AP', '98765-432'),
  (20, 'Pedro Henrique', 'Rua T, 456', 'Campo Grande', 'MS', '34567-210'),
  (21, 'Carolina Souza', 'Avenida U, 789', 'Cuiabá', 'MT', '87654-987'),
  (22, 'Gustavo Santos', 'Rua V, 123', 'Belém', 'PA', '09876-543'),
  (23, 'Laura Pereira', 'Avenida W, 456', 'Boa Vista', 'RR', '87654-321'),
  (24, 'Marcos Lima', 'Rua X, 789', 'Aracaju', 'SE', '76543-210'),
  (25, 'Isabela Ferreira', 'Avenida Y, 123', 'Palmas', 'TO', '54321-987'),
  (26, 'João Carlos', 'Rua Z, 456', 'Porto Alegre', 'RS', '01234-876'),
  (27, 'Aline Rodrigues', 'Avenida 1, 789', 'São Paulo', 'SP', '98765-432'),
  (28, 'Marcelo Almeida', 'Rua 2, 123', 'Rio de Janeiro', 'RJ', '34567-210'),
  (29, 'Larissa Oliveira', 'Avenida 3, 456', 'Belo Horizonte', 'MG', '87654-987'),
  (30, 'Guilherme Santos', 'Rua 4, 789', 'Salvador', 'BA', '09876-543'),
  (31, 'João Silva', 'Rua A, 123', 'São Paulo', 'SP', '01234-567'),
  (32, 'Maria Santos', 'Avenida B, 456', 'Rio de Janeiro', 'RJ', '98765-432'),
  (33, 'Carlos Oliveira', 'Rua C, 789', 'Belo Horizonte', 'MG', '34567-890'),
  (34, 'Ana Costa', 'Avenida D, 789', 'Salvador', 'BA', '12345-678'),
  (35, 'José Oliveira', 'Rua E, 456', 'Fortaleza', 'CE', '87654-321'),
  (36, 'Mariana Fernandes', 'Rua F, 789', 'Recife', 'PE', '54321-876'),
  (37, 'Pedro Santos', 'Avenida G, 123', 'Porto Alegre', 'RS', '67890-123'),
  (38, 'Ana Maria', 'Rua H, 456', 'Curitiba', 'PR', '76543-210'),
  (39, 'Fernando Souza', 'Avenida I, 789', 'Manaus', 'AM', '54321-987');
  
-- Inserção de dados na tabela "pedidos"
INSERT INTO pedidos (id, cliente_id, data_pedido, valor_total)
VALUES
  (1, 1, '2023-05-01', 100.00),
  (2, 2, '2023-05-02', 150.00),
  (3, 3, '2023-05-03', 200.00),
  (4, 4, '2023-05-04', 120.00),
  (5, 5, '2023-05-05', 180.00),
  (6, 6, '2023-05-06', 210.00),
  (7, 7, '2023-05-07', 90.00),
  (8, 8, '2023-05-08', 130.00),
  (9, 9, '2023-05-09', 160.00),
  (10, 10, '2023-05-10', 190.00),
  (11, 11, '2023-05-11', 140.00),
  (12, 12, '2023-05-12', 170.00),
  (13, 13, '2023-05-13', 200.00),
  (14, 14, '2023-05-14', 110.00),
  (15, 15, '2023-05-15', 140.00),
  (16, 16, '2023-05-16', 170.00),
  (17, 17, '2023-05-17', 150.00),
  (18, 18, '2023-05-18', 180.00),
  (19, 19, '2023-05-19', 210.00),
  (20, 20, '2023-05-20', 120.00),
  (21, 21, '2023-05-21', 150.00),
  (22, 22, '2023-05-22', 180.00),
  (23, 23, '2023-05-23', 130.00),
  (24, 24, '2023-05-24', 160.00),
  (25, 25, '2023-05-25', 190.00),
  (26, 26, '2023-05-26', 140.00),
  (27, 27, '2023-05-27', 170.00),
  (28, 28, '2023-05-28', 200.00),
  (29, 29, '2023-05-29', 110.00),
  (30, 30, '2023-05-30', 140.00),
  (31, 1, '2023-06-01', 170.00),
  (32, 2, '2023-06-02', 150.00),
  (33, 3, '2023-06-03', 180.00),
  (34, 4, '2023-06-04', 210.00),
  (35, 5, '2023-06-05', 120.00),
  (36, 6, '2023-06-06', 150.00),
  (37, 7, '2023-06-07', 180.00),
  (38, 8, '2023-06-08', 210.00),
  (39, 9, '2023-06-09', 120.00);

-- Inserção de dados na tabela "produtos"
INSERT INTO produtos (id, nome, descricao, preco)
VALUES
  (1, 'Camiseta', 'Camiseta preta de algodão', 29.99),
  (2, 'Calça Jeans', 'Calça jeans azul', 59.99),
  (3, 'Tênis', 'Tênis esportivo', 99.99),
  (4, 'Blusa', 'Blusa de manga longa', 39.99),
  (5, 'Shorts', 'Shorts jeans', 49.99),
  (6, 'Sapato', 'Sapato social', 129.99),
  (7, 'Vestido', 'Vestido estampado', 79.99),
  (8, 'Meia', 'Meia branca de algodão', 9.99),
  (9, 'Boné', 'Boné preto com logo', 19.99),
  (10, 'Óculos de Sol', 'Óculos de sol estilo aviador', 59.99),
  (11, 'Jaqueta', 'Jaqueta de couro sintético', 89.99),
  (12, 'Bolsa', 'Bolsa de mão pequena', 49.99),
  (13, 'Chapéu', 'Chapéu de palha', 29.99),
  (14, 'Relógio', 'Relógio de pulso analógico', 99.99),
  (15, 'Calçado Esportivo', 'Tênis esportivo', 79.99),
  (16, 'Camisa Polo', 'Camisa polo listrada', 39.99),
  (17, 'Saia', 'Saia midi plissada', 59.99),
  (18, 'Óculos de Grau', 'Óculos de grau retangular', 79.99),
  (19, 'Bermuda', 'Bermuda de algodão', 29.99),
  (20, 'Carteira', 'Carteira de couro', 49.99),
  (21, 'Sandália', 'Sandália de salto alto', 69.99),
  (22, 'Blazer', 'Blazer feminino', 99.99),
  (23, 'Colar', 'Colar dourado com pingente', 19.99),
  (24, 'Camiseta Manga Longa', 'Camiseta manga longa branca', 34.99),
  (25, 'Calça Social', 'Calça social preta', 69.99),
  (26, 'Blusa de Frio', 'Blusa de frio com capuz', 49.99),
  (27, 'Bolsa de Viagem', 'Bolsa de viagem grande', 89.99),
  (28, 'Chinelo', 'Chinelo de dedo', 19.99),
  (29, 'Colar de Prata', 'Colar de prata com pingente', 39.99),
  (30, 'Calça Legging', 'Calça legging preta', 29.99),
  (31, 'Regata', 'Regata masculina', 24.99),
  (32, 'Blusa de Tricô', 'Blusa de tricô quentinha', 59.99),
  (33, 'Mochila', 'Mochila resistente à água', 79.99),
  (34, 'Cinto', 'Cinto de couro marrom', 29.99),
  (35, 'Vestido de Festa', 'Vestido longo para festas', 129.99),
  (36, 'Shorts Jeans', 'Shorts jeans desfiado', 39.99);
  
-- Inserção de dados na tabela "itens_pedido"
INSERT INTO itens_pedido (id, pedido_id, produto_id, quantidade, preco_unitario)
VALUES
  (1, 1, 1, 2, 29.99),
  (2, 1, 2, 1, 59.99),
  (3, 2, 1, 3, 29.99),
  (4, 3, 3, 2, 99.99),
  (5, 4, 4, 3, 39.99),
  (6, 4, 5, 2, 49.99),
  (7, 5, 6, 1, 129.99),
  (8, 6, 7, 2, 79.99),
  (9, 7, 4, 1, 39.99),
  (10, 8, 8, 2, 9.99),
  (11, 8, 9, 1, 19.99),
  (12, 9, 10, 3, 59.99),
  (13, 9, 11, 2, 89.99),
  (14, 10, 12, 1, 49.99),
  (15, 10, 13, 2, 29.99),
  (16, 11, 14, 1, 99.99),
  (17, 11, 15, 2, 79.99),
  (18, 12, 16, 1, 39.99),
  (19, 12, 17, 3, 59.99),
  (20, 13, 18, 2, 79.99),
  (21, 13, 19, 1, 29.99),
  (22, 14, 20, 2, 49.99),
  (23, 14, 21, 1, 69.99),
  (24, 15, 22, 1, 99.99),
  (25, 15, 23, 2, 19.99),
  (26, 16, 24, 1, 34.99),
  (27, 16, 25, 3, 69.99),
  (28, 17, 26, 2, 49.99),
  (29, 17, 27, 1, 89.99),
  (30, 18, 28, 2, 19.99),
  (31, 18, 29, 1, 39.99),
  (32, 19, 30, 1, 29.99),
  (33, 19, 31, 2, 24.99),
  (34, 20, 32, 1, 59.99),
  (35, 20, 33, 3, 79.99),
  (36, 21, 34, 2, 29.99),
  (37, 21, 35, 1, 129.99),
  (38, 22, 36, 2, 39.99),
  (39, 22, 8, 1, 9.99);

show tables;

