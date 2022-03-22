CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	tipo varchar(255),
    descricao varchar(500),
    receita varchar(500),
   
   primary key (id)
    
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    uso varchar(255),
    classificacao varchar(255),
    preco decimal,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    
);

SELECT * FROM tb_produto;

INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES ("ANTI BIÓTICOS", "inibem e causam morte de bacterias", "Reter receita");
INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES ("ANTI INFLAMATÓRIOS", "combate inflamação, dor oue febre", "Reter receita");
INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES ("ANTI TÉRMICOS", "para dor e febre", "Não retém receita");
INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES ("ANTI DEPRESSIVOS", "tratamento de transtorno mental", "Reter receita");
INSERT INTO tb_categoria(tipo, descricao, receita)
VALUES ("ANSIOLÍTICOS", "tratamento de transtorno mental", "Reter receita");


INSERT INTO tb_produto(nome, uso, classificacao, preco, categoria_id)
VALUES("Tylenol criança 32mg", "dor e febre", "pediatrico", 24.80, 3);

INSERT INTO tb_produto(nome, uso, classificacao, preco, categoria_id)
VALUES("Nimesulida", "inflamação", "adultos e criaças acima de 12 anos", 9.90, 2);

INSERT INTO tb_produto(nome, uso, classificacao, preco, categoria_id)
VALUES("Dipirona 1g cx", "dor e febre", "adulto", 25,90, 3);

INSERT INTO tb_produto(nome, uso, classificacao, preco, categoria_id)
VALUES("Fluoxetina", "depressão", "adulto", 30.50, 4);

INSERT INTO tb_produto(nome, uso, classificacao, preco, categoria_id)
VALUES("Bromazepam", "ansiedade", "adulto", 180.99, 5);

INSERT INTO tb_produto(nome, uso, classificacao, preco, categoria_id)
VALUES("Amoxilina", "infecções", "adulto e pediatrico", 20.15, 1);

INSERT INTO tb_produto(nome, uso, classificacao, preco, categoria_id)
VALUES("Dorflex cx", "dor e relaxamento dos músculos", "adulto", 32.50, 3);

INSERT INTO tb_produto(nome, uso, classificacao, preco, categoria_id)
VALUES("Strepsyls", "dor e inflamação da garganta", "adulto", 11.90, 3);



SELECT * FROM tb_pizza WHERE preco > 50.00;

SELECT * FROM tb_pizza WHERE preco >= 3.00 AND preco <= 60.00;

SELECT * FROM tb_pizza WHERE nome LIKE "%b%";


SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;
-- Traz uma tabela com os dados das duas ou mais tabelas que você tem atraves da sua semelhança

SELECT * FROM tb_produto WHERE categoria_id = 3;