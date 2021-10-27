/* Crie um banco de dados para um serviço de um site de cursos onlines, 
o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida,
 onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
*/

create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo enum ("Presencial", "EaD"),
pago boolean,

primary key (id)
);


create table tb_produto(
id_produto bigint auto_increment,
nome varchar (35),
preco decimal (10,2),
area varchar (35),
id_categoria bigint,

foreign key (id_categoria) references tb_categoria(id),
primary key (id_produto)
);

insert into tb_produto ( nome, preco, area)
values ("Java", 1500.00, "Back-End");

insert into tb_produto ( nome, preco, area)
values ("Inglês", 2000.00, "Idiomas");

insert into tb_produto ( nome, preco, area)
values ("Barista", 00.00, "Gastronomia");

insert into tb_categoria (tipo, pago)
values ("EaD" , true);

insert into tb_categoria (tipo, pago)
values ("EaD" , true);

insert into tb_categoria (tipo, pago)
values ("Presencial" , false);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra J.
select * from tb_produto where nome like "%j%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from  tb_categoria inner join tb_produto on tb_categoria.id =tb_produto.id_categoria; 

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
select * from tb_produto inner join tb_categoria on tb_produto.id_categoria where tipo = "EaD";

