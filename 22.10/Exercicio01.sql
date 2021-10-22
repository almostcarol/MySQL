create database db_RH; 

use db_RH;

create table tb_funcionares(

id_ususario bigint auto_increment,
nome varchar (255) not null,
cargo varchar (255) not null,
email varchar (255) not null,
salario decimal (10,2) not null,
primary key (id_ususario)
);


select * from db_RH.tb_funcionares;
insert into tb_funcionares(nome,cargo,email,salario)
values ("Gabriela" , "Gerente" , "gabriela@email.com", 10000.00);

insert into tb_funcionares(nome,cargo,email,salario)
values ("Lucas", "Vendedor" , "lucas@email.com" , 7000.00);

insert into tb_funcionares(nome,cargo,email,salario)
values ("João" , "Motorista" , "joão@email.com", 1700.00);

insert into tb_funcionares(nome,cargo,email,salario)
values ("Juliana" , "Secretaria" , "juliana@email.com", 1850.00);

insert into tb_funcionares(nome,cargo,email,salario)
values ("Maria" , "Jovem Aprendiz" , "mariaa@email.com", 950.00);

select * from tb_funcionares where salario < 2000.00;

select * from tb_funcionares where salario > 2000.00;

update db_RH.tb_funcionares set salario = 8000.00 where (id_ususario = 2);

select * from tb_funcionares;





