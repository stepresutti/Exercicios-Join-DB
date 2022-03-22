CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	nome varchar(255),
    tipo varchar(255),
	características varchar(500),
   
   primary key (id)
    
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id bigint auto_increment,
    ndescricao_para_filtro varchar(255),
    quantidade int,
    preco decimal,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    
);

SELECT * FROM tb_produto;

INSERT INTO tb_categoria(nome, tipo, caracteristica)
VALUES ("DECORAÇÃO", "decoração para ambiente interno", "engloba itens de beleza, personalidade e utilidade para ambientes domésticos");
INSERT INTO tb_categoria(nome, tipo, caracteristica)
VALUES ("DECORAÇÃO JARDIM", "decoração para ambiente externo", "engloba itens de utilidade e beleza para áreas de piscina, quintal e varandas gourmet");
INSERT INTO tb_categoria(nome, tipo, caracteristica)
VALUES ("FERRAMENTAS", "alimentadas por energia", "engloba ferramentas que facilitam obras e montagens e que se alimenta de energia");
INSERT INTO tb_categoria(nome, tipo, caracteristica)
VALUES ("MANUAIS", "ferramentas sem fonte eletrica para uso manual", "engloba ferramentas manuais de pintura, montagem, desmontagem, estrutura, etc.");
INSERT INTO tb_categoria(nome, tipo, caracteristica)
VALUES ("ESTRUTURA", "itens de estruturamento prédios de todos os portes", "engloba itens basicos de estruturamento de predios de todos os portes");


INSERT INTO tb_produto(nome, descricao_para_filtro, quantidade, preco, categoria_id)
VALUES("Martelo", "ferramenta com cabeça de metal", 1, 19.50, 4);

INSERT INTO tb_produto(nome, descricao_para_filtro, quantidade, preco, categoria_id)
VALUES("Lixa de parede", "papel aspero para lixar superficies", 1, 1.99, 4);

INSERT INTO tb_produto(nome, descricao_para_filtro, quantidade, preco, categoria_id)
VALUES("Furadeira", "equipamento para fazer buracos", 1, 259.99, 3);

INSERT INTO tb_produto(nome, descricao_para_filtro, quantidade, preco, categoria_id)
VALUES("Planta jiboia", "planta de ambiente interno", 1, 21.00, 1);

INSERT INTO tb_produto(nome, descricao_para_filtro, quantidade, preco, categoria_id)
VALUES("Tijolos de barro", "itens para construir parede", 100, 200.00, 5);

INSERT INTO tb_produto(nome, descricao_para_filtro, quantidade, preco, categoria_id)
VALUES("Cimento em kg", "construção de parede", 1, 70.00, 5);

INSERT INTO tb_produto(nome, descricao_para_filtro, quantidade, preco, categoria_id)
VALUES("Ombrelone", "guarda sol de jardim", 1, 650.99, 2);

INSERT INTO tb_produto(nome, descricao_para_filtro, quantidade, preco, categoria_id)
VALUES("Cacto mini", "planta de ambiente interno", 1, 6.50, 1);


SELECT * FROM tb_protudo WHERE preco > 50.00;

SELECT * FROM tb_protudo WHERE preco >= 3.00 AND preco <= 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";


SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;
-- Traz uma tabela com os dados das duas ou mais tabelas que você tem atraves da sua semelhança

SELECT * FROM tb_produto WHERE categoria_id = 1;