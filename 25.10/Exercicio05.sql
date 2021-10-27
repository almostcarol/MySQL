/* Crie um banco de dados para um serviço de uma loja de produtos de construção,
 o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, 
 o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
*/

create database db_construindo_a_nossa_vida;

use  db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tamanho enum ("P" , "M", "G"),
cor varchar (35),

primary key (id)
);


create table tb_produto(
id_produto bigint auto_increment,
nome varchar (35),
preco decimal (10,2),
qntd int,
id_categoria bigint,

foreign key (id_categoria) references tb_categoria(id),
primary key (id_produto)
);


insert into tb_produto(nome, preco, qntd)
values ("Cimento" , 50.00, 155);

insert into tb_produto(nome, preco, qntd)
values ("Piso" , 100.00, 1000);

insert into tb_produto(nome, preco, qntd)
values ("Lâmpada" , 40.00, 500);

insert into tb_produto(nome, preco, qntd)
values ("Azulejo" , 70.00, 1500);

insert into tb_categoria(tamanho, cor)
values ( "G", "Cinza");

insert into tb_categoria(tamanho, cor)
values ( "M", "Branco");

insert into tb_categoria(tamanho, cor)
values ( "P", "Vermelha");

insert into tb_categoria(tamanho, cor)
values ( "G", "Azul");

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "%c%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from  tb_categoria inner join tb_produto on tb_categoria.id =tb_produto.id_categoria; 

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
select * from tb_produto inner join tb_categoria on tb_produto.id_categoria where tamanho = "G";







