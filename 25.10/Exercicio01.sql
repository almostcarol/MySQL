/*
Crie um banco de dados para um serviço de um game Online , 
o nome do banco deverá ter o seguinte nome db_generation_game_online, onde,
 o sistema trabalhará com as informações dos personagens desse game. 
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
*/

create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagem(
id_personagem bigint auto_increment,
nome varchar (35) not null,
cor varchar (35) not null,
dieta varchar (35) not null,
golpe varchar (35),
key_classe bigint,
primary key (id_personagem),
foreign key (key_classe) references tb_classe(id_classe)
);

insert into tb_personagem ( nome, cor, dieta, golpe)
values ("Rupert", "Branco" , "Vegano" , "Super Compaixão");

insert into tb_personagem ( nome, cor, dieta, golpe)
values ("Pequeno Urso", "Marrom" , "Vegano" , "Super Empatia");

insert into tb_personagem ( nome, cor, dieta, golpe)
values ("Piu-Piu", "Amarelo" , "Vegano" , "Super Fofura");

insert into tb_personagem ( nome, cor, dieta, golpe)
values ("Arnold", "Branco" , "Vegetariano" , "Super Doçura");

insert into tb_personagem ( nome, cor, dieta, golpe)
values ("Caillou", "Branco" , "Vegano" , "Super Compreensão");

create table tb_classe(
id_classe bigint auto_increment,
forca_ataque bigint not null,
forca_defesa bigint not null,
posicao varchar (35),
primary key (id_classe)
);

insert into tb_classe ( forca_ataque ,  forca_defesa , posicao)
values ( 1500 , 1500, "arqueiro");

insert into tb_classe ( forca_ataque ,  forca_defesa , posicao)
values ( 2500 , 870, "atirador");

insert into tb_classe ( forca_ataque ,  forca_defesa , posicao)
values ( 2200 , 2000, "suporte");

insert into tb_classe ( forca_ataque ,  forca_defesa , posicao)
values ( 1800 , 1800, "caçador");

insert into tb_classe ( forca_ataque ,  forca_defesa , posicao)
values ( 1900 , 1220, "topo");

select * from tb_personagem;
select * from tb_classe;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_classe where forca_ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
select * from tb_classe where forca_defesa between 1000 and 2000;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "%c%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe
where tb_classe.posicao = "arqueiro"
order by id_personagem;

select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.key_classe
where tb_classe.posicao = "atirador"
order by id_personagem;

