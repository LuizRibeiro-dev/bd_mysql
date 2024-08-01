CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;


CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT,
    tipo VARCHAR(30)
);


CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);


INSERT INTO tb_classes (nome, descricao, tipo) VALUES
('Guerreiro', 'Classe especializada em combate corpo a corpo', 'Ofensiva'),
('Mago', 'Classe que utiliza magias para atacar e defender', 'Mágica'),
('Arqueiro', 'Classe que utiliza arcos e flechas', 'Distância'),
('Ladino', 'Classe ágil e furtiva', 'Aérea'),
('Paladino', 'Classe que combina combate corpo a corpo com habilidades de cura', 'Suporte');


INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES
('Thor', 2500, 1500, 1),
('Luna', 1800, 1600, 2),
('Artemis', 2200, 1200, 3),
('Zane', 2100, 1100, 4),
('Eldric', 1900, 1700, 5),
('Vera', 1600, 1300, 1),
('Astra', 2300, 1400, 2),
('Kira', 2000, 1800, 3);


SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;


SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;


SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';


SELECT p.nome AS personagem_nome, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id;


SELECT p.nome AS personagem_nome, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome = 'Arqueiro';
