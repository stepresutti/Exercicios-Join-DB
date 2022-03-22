CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	nome varchar(255),
    areaDoConhecimento varchar(500),
    descricao varchar(500),
   
   primary key (id)
    
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
	id bigint auto_increment,
    nome varchar(255),
    modalidade varchar(255),
    duracaoEmMeses int,
    valor decimal,
    categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    
);

SELECT * FROM tb_curso;

INSERT INTO tb_categoria(nome, areaDoConhecimento, descricao)
VALUES ("PROGRAMAÇÃO", "tecnologia", "Aprenda a programar com o curso mais completo e rápido do mercado");
INSERT INTO tb_categoria(nome, areaDoConhecimento, descricao)
VALUES ("CABELOS", "beleza", "Os melhores cursos de visagismo");
INSERT INTO tb_categoria(nome, areaDoConhecimento, descricao)
VALUES ("MAQUIAGEM", "beleza e eventos", "Aprenda a fazer maquiagens profissionais para todos os tipo de ocasião");
INSERT INTO tb_categoria(nome, areaDoConhecimento, descricao)
VALUES ("CONFEITARIA", "doces e bolos", "Cursos completos de confeitaria, decoração e mais.");
INSERT INTO tb_categoria(nome, areaDoConhecimento, descricao)
VALUES ("ANIMAIS", "saúde", "Aprenda a cuidar dos seus pets e previnir doenças");


INSERT INTO tb_curso(nome, modalidade, duracaoEmMeses, valor, categoria_id)
VALUES("Java - linguagem de programação", "semi presencial", 5, 99.99, 1);
INSERT INTO tb_curso(nome, modalidade, duracaoEmMeses, valor, categoria_id)
VALUES("Linguagem c++", "semi presencial", 5, 99.99, 1);
INSERT INTO tb_curso(nome, modalidade, duracaoEmMeses, valor, categoria_id)
VALUES("Make2022", "presencial", 1, 59.90, 3);
INSERT INTO tb_curso(nome, modalidade, duracaoEmMeses, valor, categoria_id)
VALUES("LoirasExpert", "presencial", 5, 399.99, 2);
INSERT INTO tb_curso(nome, modalidade, duracaoEmMeses, valor, categoria_id)
VALUES("RuivasExpert", "presencial", 5, 399.99, 2);
INSERT INTO tb_curso(nome, modalidade, duracaoEmMeses, valor, categoria_id)
VALUES("Lógica de programação", "online", 1, 45.00, 1);
INSERT INTO tb_curso(nome, modalidade, duracaoEmMeses, valor, categoria_id)
VALUES("Bentô cake", "presencial", 1, 39.99, 4);
INSERT INTO tb_curso(nome, modalidade, duracaoEmMeses, valor, categoria_id)
VALUES("Manobras emergenciais para cães e gatos", "semi presencial", 3, 159.99, 5);


SELECT * FROM tb_curso WHERE valor > 50.00;

SELECT * FROM tb_curso WHERE valor >= 3.00 AND valor <= 60.00;

SELECT * FROM tb_curso WHERE nome LIKE "%j%";


SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;
-- Traz uma tabela com os dados das duas ou mais tabelas que você tem atraves da sua semelhança

SELECT * FROM tb_produto WHERE categoria_id = 1;