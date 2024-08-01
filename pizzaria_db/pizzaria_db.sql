CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);


CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(20),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas salgadas com diversos ingredientes.'),
('Doce', 'Pizzas com recheios doces.'),
('Vegana', 'Pizzas sem ingredientes de origem animal.'),
('Especial', 'Pizzas com ingredientes especiais.'),
('Tradicional', 'Pizzas com receitas tradicionais.');


INSERT INTO tb_pizzas (nome, valor, tamanho, id_categoria) VALUES
('Margherita', 40.00, 'Média', 5),
('Calabresa', 50.00, 'Grande', 1),
('Quatro Queijos', 55.00, 'Média', 1),
('Frango com Catupiry', 60.00, 'Grande', 1),
('Nutella com Morango', 70.00, 'Média', 2),
('Banana com Canela', 65.00, 'Pequena', 2),
('Pizza Vegana', 55.00, 'Média', 3),
('Pizza Especial da Casa', 85.00, 'Grande', 4);


SELECT * FROM tb_pizzas
WHERE valor > 45.00;


SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';


SELECT p.nome AS pizza_nome, c.nome AS categoria_nome, p.valor
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;


SELECT p.nome AS pizza_nome, c.nome AS categoria_nome, p.valor
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Doce';
