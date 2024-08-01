CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);


CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos para tratamento e prevenção de doenças.'),
('Suplementos', 'Produtos para complementar a dieta e melhorar a saúde.'),
('Higiene', 'Produtos para cuidados pessoais e higiene.'),
('Beleza', 'Produtos para cuidados com a aparência.'),
('Cosméticos', 'Produtos para maquiagem e cuidados com a pele.');


INSERT INTO tb_produtos (nome, valor, quantidade_estoque, id_categoria) VALUES
('Paracetamol 500mg', 15.00, 100, 1),
('Vitamina C 1000mg', 35.00, 50, 2),
('Shampoo Anticaspa', 25.00, 30, 3),
('Creme Hidratante', 45.00, 20, 4),
('Máscara Facial', 55.00, 25, 5),
('Antibiótico', 60.00, 10, 1),
('Proteína em Pó', 80.00, 15, 2),
('Sabonete Líquido', 20.00, 40, 3);


SELECT * FROM tb_produtos
WHERE valor > 50.00;


SELECT * FROM tb_produtos
WHERE valor BETWEEN 5.00 AND 60.00;


SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';


SELECT p.nome AS produto_nome, c.nome AS categoria_nome, p.valor
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;


SELECT p.nome AS produto_nome, c.nome AS categoria_nome, p.valor
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Cosméticos';
