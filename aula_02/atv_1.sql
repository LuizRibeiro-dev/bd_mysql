CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    matricula BIGINT NOT NULL,
    sexo CHAR(1),
    salario DECIMAL(8,2) NOT NULL,
    profissao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DESCRIBE tb_colaboradores;

INSERT INTO tb_colaboradores(nome, matricula, sexo, salario, profissao)
VALUES ("Julia", 4392 , "F", 7500.00 , "DEV Pleno"),
("Izabella", 534944 , "F", 4500.00 , "DEV Jr."),
("Pietro", 783 , "M", 1500.00 , "Estagiario");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET profissao = "Trainee", salario = 1900.00 WHERE id = 3