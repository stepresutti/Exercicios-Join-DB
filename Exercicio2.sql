CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	nome varchar(255),
    descricao varchar(255),
	saude varchar(500),
   
   primary key (id)
    
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
	id bigint auto_increment,
    nome varchar(255),
    sabor varchar(255),
    tamanho varchar(255),
    preco decimal,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    
);

SELECT * FROM tb_pizza;

INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("DOCE", "pizzas com ingredientes açucarados, chocolate e/ou frutas", "alto teor de carboidrato");
INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("SALGADO", "pizzas com ingredientes salgados, carnes, embutidos e queijos", "Rico em gordura e proteína");
INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("VEGANA", "pizzas com ingredientes de origem vegetal apenas", "Mais leves e menos calóricas");
INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("VEGETARIANA", "pizzas com ingredientes de origem vegetal, leite e ovo", "contem proteína animal do leite e do ovo");
INSERT INTO tb_categoria(nome, descricao, saude)
VALUES ("SEM GLÚTEN", "pizzas com ingredientes personalizados sem glúten para intolerantes", "para intolerantes a glúten");

INSERT INTO tb_pizza(nome, sabor, tamanho, preco, categoria_id)
VALUES("Toda veganinha", "alho frito, queijo vegetal e brócolis", "P M e G", 36.90, 3);

INSERT INTO tb_pizza(nome, sabor, tamanho, preco, categoria_id)
VALUES("Coisa de vegge", "azeitona preta, tomatinho cereja, rucula, queijo e molho com manjericão", "P M e G", 46,00, 4);

INSERT INTO tb_pizza(nome, sabor, tamanho, preco, categoria_id)
VALUES("Nutellita", "Morango, nutela e amendoim triturado", "P M e G", 48,00, 1);

INSERT INTO tb_pizza(nome, sabor, tamanho, preco, categoria_id)
VALUES("Os apaixonados", "Queijo com goiabada", "P M e G", 35,20, 1);

INSERT INTO tb_pizza(nome, sabor, tamanho, preco, categoria_id)
VALUES("A diferentona", "Picanha, queijo e batata frita", "P M e G", 55,90, 2);

INSERT INTO tb_pizza(nome, sabor, tamanho, preco, categoria_id)
VALUES("Mussarelou toda", "mussarela de qualidade com rodelas de tomate e orégano", "P M e G", 29,90, 2);

INSERT INTO tb_pizza(nome, sabor, tamanho, preco, categoria_id)
VALUES("glutenfreemaravilha", "presunto de parma, champignon, catupiry e bacon numa massa sem gluten", "P M e G", 60.00, 3);


SELECT * FROM tb_pizza WHERE preco > 45.00;

SELECT * FROM tb_pizza WHERE preco >= 29.00 AND preco <= 60.00;

SELECT * FROM tb_pizza WHERE nome LIKE "%c%";


SELECT * FROM tb_pizza
INNER JOIN tb_categoria on tb_categoria.id = tb_pizza.id;
-- Traz uma tabela com os dados das duas ou mais tabelas que você tem atraves da sua semelhança

SELECT * FROM tb_pizza WHERE categoria_id = 1;