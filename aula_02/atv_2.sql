CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    marca VARCHAR(255),
    estoque BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

DESCRIBE tb_produtos;

INSERT INTO tb_produtos(nome, categoria , preco, marca, estoque)
VALUES ("Coca-cola", "Refrigerante" , 6.00 , "Coca-cola" , true),
("BonaFont", "Água" , 4.00 , "Coca-cola", true),
("Tang", "Suco" ,  2.85 , "Tang" , false),
("Maguary", "Suco" , 16.00 , "Maguary", true),
("Big Apple", "Vodka" ,  40.00 , "Bacardi", true),
("Royal Salute", "Whisky" , 1600.00 , "Johnny Walker", false),
("Red Bull", "Energetico" ,  2000.00 , "Red Bull", true),
("Fusion", "Energetico" ,  12.00, "Antartica" , true);

select * from tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET estoque = true WHERE id =6;