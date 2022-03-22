CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id bigint auto_increment,
	nivel int,
    classe varchar(255),
    habilidade varchar(255),
    arma varchar(255),
	
    primary key (id)
    
);

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
	id bigint auto_increment,
    nome varchar(255),
    raca varchar(255),
    vida int,
    ataque int,
    defesa int,
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
    
);

SELECT * FROM tb_classe;

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (99, "Guerreiro", "Perícia em armas", "Espada de duas mãos");
INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (200, "Mago", "Resistência a magia" , "Cajado");
INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (100, "Ladino", "Mãos leves" , "Adaga");
INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (149, "Arqueiro", "Arquerismo e precisão" , "Arco e flexa");
INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (50, "Bardo", "Lábia", "Alaúde");

INSERT INTO tb_personagem(nome, raca, vida, ataque, defesa, classe_id)
VALUES("Cleison", "Anão", 1500, 12000, 3000, 1);
-- 1 corresponde ao id do guerreiro que é o personagem que eu quero que meu anão seja
-- precisamos conhecer nossa tabela pra poder relacionar 
INSERT INTO tb_personagem(nome, raca, vida, ataque, defesa, classe_id)
VALUES("Josias", "Elfo negro", 1000, 3000, 1200, 5);
INSERT INTO tb_personagem(nome, raca, vida, ataque, defesa, classe_id)
VALUES("Vanuza", "Centauro", 5000, 700, 7500, 2);
INSERT INTO tb_personagem(nome, raca, vida, ataque, defesa, classe_id)
VALUES("Cleide", "Humana", 500, 2000, 6000, 3);
INSERT INTO tb_personagem(nome, raca, vida, ataque, defesa, classe_id)
VALUES("Ariel", "Construto", 2000, 4000, 8800, 4);
INSERT INTO tb_personagem(nome, raca, vida, ataque, defesa, classe_id)
VALUES("Anitta", "Elfa", 2500, 8000, 6000, 3);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;
-- poderia usar defesa BETWEEN 100 AND 2000

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";
-- %"o que vc quer achar contido"% (%c% que contenha c)... (%c termina com c)(c% - começa com c)

SELECT * FROM tb_personagem 
INNER JOIN tb_classe on tb_classe.id = tb_personagem.id;
-- Traz uma tabela com os dados das duas ou mais tabelas que você tem atraves da sua semelhança

SELECT * FROM tb_classe
INNER JOIN tb_personagem on tb_personagem.classe_id = tb_classe.id
WHERE classe_id = 3;
-- Traz a anitta que era o segundo 3