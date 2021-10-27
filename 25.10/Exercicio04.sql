/* Crie um banco de dados para um serviço de um açougue ou uma quitanda, 
o nome do banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas,
 onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
*/

create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
epoca boolean,
tipo enum ("Legumes" , "Frutas"),

primary key (id)
);

create table tb_produto(
id_produto bigint auto_increment,
nome varchar (35),
cor varchar (35),
preco decimal (10,2),
id_categoria bigint,

foreign key(id_categoria) references tb_categoria(id),
primary key (id_produto)
);

insert into tb_produto ( nome, cor, preco)
values ("Banana" , "Amarela" , 10.00);

insert into tb_produto ( nome, cor, preco)
values ("Melão" , "Amarela" , 12.00);

insert into tb_produto ( nome, cor, preco)
values ("Morango" , "Vermelho" , 80.00);

insert into tb_produto ( nome, cor, preco)
values ("Chuchu" , "Verde" , 23.00);

insert into tb_produto ( nome, cor, preco)
values ("Mandioquinha" , "Amarelo" , 61.00);

insert into tb_produto ( nome, cor, preco)
values ("Beterraba" , "Roxa" , 40.00);

insert into tb_categoria ( epoca, tipo)
values ( true, "Frutas");

insert into tb_categoria ( epoca, tipo)
values ( false, "Frutas");

insert into tb_categoria ( epoca, tipo)
values ( false, "Frutas");

insert into tb_categoria ( epoca, tipo)
values ( true, "Legumes");

insert into tb_categoria ( epoca, tipo)
values ( true, "Legumes");

insert into tb_categoria ( epoca, tipo)
values ( true, "Legumes");

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select *  from tb_produto where preco > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "%c%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_categoria inner join tb_produto on tb_categoria.id =tb_produto.id_categoria; 

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
select * from tb_produto inner join tb_categoria on tb_produto.id_categoria where tipo = "Frutas";
 









