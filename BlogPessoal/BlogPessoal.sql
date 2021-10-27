create database db_blog_pessoal;

use db_blog_pessoal;

CREATE TABLE `Temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `Postagens` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL UNIQUE,
	`texto` varchar(10000),
	`data` TIMESTAMP NOT NULL,
	`id_tema` bigint NOT NULL,
	`id_usuario` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuários` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`nick` varchar(255) NOT NULL UNIQUE,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk0` FOREIGN KEY (`id_tema`) REFERENCES `Temas`(`id`);

ALTER TABLE `Postagens` ADD CONSTRAINT `Postagens_fk1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuários`(`id`);

