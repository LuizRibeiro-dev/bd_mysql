use db_quitanta;

select * from tb_produtos order by nome asc;

create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key(id)
);

insert into tb_categorias (descricao) values ("Fruta"),("Verdura"),("Legumes");

select * from tb_categorias;

select * from tb_produtos;

INSERT INTO tb_categorias (descricao)

VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)

VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)

VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)

VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)

VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)

VALUES ('Outros');
 
INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)

VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco)

VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome, quantidade, preco)

VALUES("Sacola Verde", 1118, 0.50);

alter table tb_produtos add categoriaid bigint;

alter table tb_produtos add constraint fk_produtos_categorias
foreign key (categoriaid) references tb_categorias (id);

select nome, quantidade, preco from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

select nome, quantidade, preco, tb_categorias.descricao from tb_produtos
right join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;