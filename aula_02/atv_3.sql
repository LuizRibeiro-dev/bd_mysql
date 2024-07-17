CREATE DATABASE db_escola; 
USE db_escola;

CREATE TABLE tb_estudantes (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    matricula BIGINT NOT NULL,
    idade INT NOT NULL,
    media DECIMAL (5,2) NOT NULL,
    aprovado BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, matricula,idade, media, aprovado)
VALUES ("Izabella", 123456 , 17, 7.00 , true),
("Julia", 5124 , 21, 8.50 , true),
("Caroline", 524215 , 23, 9.00 , true),
("João",75755 , 17, 4.00 , false),
("Pedro", 12124 , 27, 8.50 , true ),
("Felipe", 756754 , 16, 10.00 , true),
("Ricardo", 15525 , 35 , 6.00 , false),
("Petala", 756821 , 19, 6.50 , false),
("Jorge", 91024 , 23 , 7.50 , true);

SELECT * FROM tb_estudantes WHERE media > 7.00;
SELECT * FROM tb_estudantes WHERE media < 7.00;

UPDATE tb_estudantes SET media = 7.00  WHERE id = 4;
UPDATE tb_estudantes SET aprovado = true  WHERE id = 4;

SELECT * FROM tb_estudantes;