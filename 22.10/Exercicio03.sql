create database db_escola;

use db_escola;

create table tb_estudantes (
	id_estudante bigint auto_increment,
 nome varchar(35) not null,
 idade int not null,
 ano int not null,
 nota decimal (10,2),
 primary key ( id_estudante)
);

insert into tb_estudantes (nome, idade, ano, nota)
values ("Catarina" , 17, 3, 8.9);

insert into tb_estudantes (nome, idade, ano, nota)
values ("João" , 15, 1, 5.9);

insert into tb_estudantes (nome, idade, ano, nota)
values ("Pedro" , 15, 1, 6.9);

insert into tb_estudantes (nome, idade, ano, nota)
values ("Lucas" , 17, 3, 4.9);

insert into tb_estudantes (nome, idade, ano, nota)
values ("Alice" , 16, 2, 5.9);

insert into tb_estudantes (nome, idade, ano, nota)
values ("Flavia" , 17, 3, 9.9);

insert into tb_estudantes (nome, idade, ano, nota)
values ("Joana" , 15, 1, 6.8);

insert into tb_estudantes (nome, idade, ano, nota)
values ("Lara" , 17, 3, 10.00);


select * from tb_estudantes where nota < 7.00;

select * from tb_estudantes where nota > 7.00;

update tb_estudantes set nota = 10 where (id_estudante = 6);

select * from tb_estudantes;
