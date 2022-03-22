CREATE DATABASE db_cidade_das_frutas;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	nome varchar(255),
    descricao varchar(500),
    saude varchar(500),
   
   primary key (id)
    
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    cor varchar(255),
    quantidade varchar(255),
    preco decimal,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    
);

SELECT * FROM tb_produto;

INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("FRUTAS", "fruto de sabor adocicado", "vitaminas variadas e ricas em carboidrato ");
INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("VERDURAS", "plantas, folhas e flores normalmente de tom verde", "grande concentração de vitaminas e fonte de fibras");
INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("LEGUMES", "tuberculos, cereais e caules", "concentração de vitaminas e rico em fibras");
INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("TEMPEROS", "contém verduras usadas para temperar", "temperos naturais e saudáveis");
INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("RESSECADOS", "snakcs ressecados", "lanche saudável");



INSERT INTO tb_produto(nome, cor, quantidade, preco, categoria_id)
VALUES("Salgadinho de batata doce", "pacote amarelo", "1 pacote", 10.50, 5);

INSERT INTO tb_produto(nome, cor, quantidade, preco, categoria_id)
VALUES("Maça turma da mônica", "vermelho", "1 pacote", 15.99, 1);

INSERT INTO tb_produto(nome, cor, quantidade, preco, categoria_id)
VALUES("Coentro", "verde", "1 ramo", 3.99, 4);

INSERT INTO tb_produto(nome, cor, quantidade, preco, categoria_id)
VALUES("Hortelã", "verde", "1 ramo", 3.99, 4);

INSERT INTO tb_produto(nome, cor, quantidade, preco, categoria_id)
VALUES("Manjericão", "roxo", "1 ramo pequeno", 5.99, 4);

INSERT INTO tb_produto(nome, cor, quantidade, preco, categoria_id)
VALUES("Abobrinha", "verde", "100g", 4.59, 3);

INSERT INTO tb_produto(nome, cor, quantidade, preco, categoria_id)
VALUES("Couve", "verde", "1 ramo", 3.99, 2);

INSERT INTO tb_produto(nome, cor, quantidade, preco, categoria_id)
VALUES("Alface", "verde", "1 ramo", 2.99, 2);

INSERT INTO tb_produto(nome, cor, quantidade, preco, categoria_id)
VALUES("Kiwi", "verde", "100g", 25.99, 1);


SELECT * FROM tb_protudo WHERE preco > 50.00;

SELECT * FROM tb_protudo WHERE preco >= 3.00 AND preco <= 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";


SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;
-- Traz uma tabela com os dados das duas ou mais tabelas que você tem atraves da sua semelhança

SELECT * FROM tb_produto WHERE categoria_id = 2;