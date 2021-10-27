/*Crie um banco de dados para um serviço de farmácia de uma empresa, 
o nome do banco deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

 */
 
 create database db_farmacia_do_bem;
 
 use db_farmacia_do_bem;
 
 create table tb_categoria(
 id bigint auto_increment,
 mg decimal (10, 2),
 receita boolean,
 
 primary key (id)
 );
 
 
 create table tb_produto(
 id_produto bigint auto_increment,
 nome varchar (35) not null,
 marca varchar (35) not null,
 preco decimal (10, 2),
 id_categoria bigint,
 
 foreign key(id_categoria) references tb_categoria(id),
 primary key (id_produto)
 );
 
 insert into tb_categoria ( mg, receita )
 values (20.00, false);
 
 insert into tb_categoria ( mg, receita )
 values (15.00, false);
 
 insert into tb_categoria ( mg, receita )
 values (20.00, true);
 
 insert into tb_categoria ( mg, receita )
 values (02.00, true);
 
 insert into tb_produto ( nome, marca, preco)
 values ( "Dipirona Monoidratada" , "Dorflex" ,  13.00);
 
 insert into tb_produto ( nome, marca, preco)
 values ( "Dipirona" , "Neosaldina" ,  25.00);
 
 insert into tb_produto ( nome, marca, preco)
 values ( "Isotretinoína" , "Roacutan" ,  170.24);
 
 insert into tb_produto ( nome, marca, preco)
 values ( "Clonazepam" , "Rivotril" ,  61.24);
 
 
 -- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
 select * from tb_produto where preco > 50;
 
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
 select * from tb_produto where preco between 3 and 60;
 
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
 select * from tb_produto where nome like "%c%";
 
-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_categoria inner join tb_produto on tb_categoria.id =tb_produto.id_categoria; 
 
-- Faça um select onde traga todos os Produtos de uma categoria específica 
 select * from tb_produto inner join tb_categoria on tb_produto.id_categoria where marca = "Neosaldina";
 
 
 
 
 
 