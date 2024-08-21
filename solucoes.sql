
CREATE TABLE clientes(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255),
	email VARCHAR(255),
	data_nascimento DATE,
	cidade VARCHAR(100)
);

CREATE TABLE pedidos(
	pedidoId SERIAL PRIMARY KEY,
	dataPedido DATE,
	valorTotal decimal(10,2),
	clienteId INTEGER,
	FOREIGN KEY (clienteId) REFERENCES clientes(id)
);

INSERT INTO clientes (nome, email, data_nascimento, cidade) VALUES
('Ana Silva', 'ana.silva@example.com', '1985-03-22', 'São Paulo'),
('João Pereira', 'joao.pereira@example.com', '1990-07-15', 'Rio de Janeiro'),
('Maria Souza', 'maria.souza@example.com', '1978-11-30', 'Belo Horizonte'),
('Carlos Santos', 'carlos.santos@example.com', '1982-01-12', 'Porto Alegre'),
('Fernanda Lima', 'fernanda.lima@example.com', '1995-09-05', 'Curitiba');

INSERT INTO pedidos (dataPedido, valorTotal, clienteId) VALUES
('2024-08-01', 150.75, 1),
('2024-08-02', 299.99, 2),
('2024-08-03', 50.00, 3),
('2024-08-04', 199.49, 4),
('2024-08-05', 120.00, 5);

SELECT * FROM clientes;
SELECT * FROM pedidos;
SELECT nome, email FROM clientes;

UPDATE clientes
SET email = 'maria.souza.novo@example.com'
WHERE id = 3;

UPDATE pedidos
SET valorTotal = 349.99
WHERE pedidoId = 2;

DELETE FROM pedidos WHERE pedidoID = 1;

SELECT * FROM clientes WHERE cidade = 'São Paulo';
SELECT * FROM pedidos WHERE valorTotal > 100.00;

SELECT * FROM clientes ORDER BY nome;
SELECT * FROM pedidos ORDER BY valorTotal DESC;

SELECT c.nome, p.valorTotal
FROM clientes c
INNER JOIN pedidos p ON c.id = p.clienteId;


SELECT c.nome, p.pedidoId, p.valorTotal
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.clienteId;
