--CREATE DATABASE  IF NOT EXISTS `aluraforum` ;
--USE `aluraforum`;
--
--
--DROP TABLE IF EXISTS `curso`;
--
--CREATE TABLE `curso` (
--  `id` bigint NOT NULL AUTO_INCREMENT,
--  `categoria` varchar(255) DEFAULT NULL,
--  `nome` varchar(255) DEFAULT NULL,
--  PRIMARY KEY (`id`)
--) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
--DROP TABLE IF EXISTS `usuario`;
--
--CREATE TABLE `usuario` (
--  `id` bigint NOT NULL AUTO_INCREMENT,
--  `email` varchar(255) DEFAULT NULL,
--  `nome` varchar(255) DEFAULT NULL,
--  `senha` varchar(255) DEFAULT NULL,
--  PRIMARY KEY (`id`)
--) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--DROP TABLE IF EXISTS `perfil`;
--
--CREATE TABLE `perfil` (
--  `id` bigint NOT NULL AUTO_INCREMENT,
--  `nome` varchar(255) DEFAULT NULL,
--  PRIMARY KEY (`id`)
--) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
----
--DROP TABLE IF EXISTS `usuario_perfis`;
--
--CREATE TABLE `usuario_perfis` (
--  `usuario_id` bigint NOT NULL,
--  `perfis_id` bigint NOT NULL,
--  KEY `FK7bhs80brgvo80vhme3u8m6ive` (`perfis_id`),
--  KEY `FKs91tgiyagbilt959wbufiphgc` (`usuario_id`)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
--DROP TABLE IF EXISTS `topico`;
--
--CREATE TABLE `topico` (
--  `id` bigint NOT NULL AUTO_INCREMENT,
--  `data_criacao` datetime DEFAULT NULL,
--  `mensagem` varchar(255) DEFAULT NULL,
--  `status` varchar(255) DEFAULT NULL,
--  `titulo` varchar(255) DEFAULT NULL,
--  `autor_id` bigint DEFAULT NULL,
--  `curso_id` bigint DEFAULT NULL,
--  PRIMARY KEY (`id`),
--  KEY `FKsk04hscorwqdymnafg8882v64` (`autor_id`),
--  KEY `FKcaaogjo0ynd54updie6kdpxd1` (`curso_id`)
--) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
--DROP TABLE IF EXISTS `resposta`;
--
--CREATE TABLE `resposta` (
--  `id` bigint NOT NULL AUTO_INCREMENT,
--  `data_criacao` datetime DEFAULT NULL,
--  `mensagem` varchar(255) DEFAULT NULL,
--  `solucao` bit(1) DEFAULT NULL,
--  `autor_id` bigint DEFAULT NULL,
--  `topico_id` bigint DEFAULT NULL,
--  PRIMARY KEY (`id`),
--  KEY `FK9999kvnmdq63ah7imctrl06r7` (`autor_id`),
--  KEY `FKltuv9rkfjtlmn8b0rb3wdbjsv` (`topico_id`)
--) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO USUARIO(nome, email, senha) VALUES('Aluno', 'aluno@email.com', '$2a$10$aTguDURP0bdvoXPcHX9tqOBFwoXkcWfBVidJuk5Fz6.c5yTNIHtye');
INSERT INTO USUARIO(nome, email, senha) VALUES('moderador', 'moderador@email.com', '$2a$10$aTguDURP0bdvoXPcHX9tqOBFwoXkcWfBVidJuk5Fz6.c5yTNIHtye');

INSERT INTO PERFIL(id, nome) VALUES('1', 'ROLE_ALUNO');
INSERT INTO PERFIL(id, nome) VALUES('2', 'ROLE_MODERADOR');

INSERT INTO USUARIO_PERFIS(usuario_id, perfis_id) VALUES (1, 1);
INSERT INTO USUARIO_PERFIS(usuario_id, perfis_id) VALUES (2, 2);

INSERT INTO CURSO(nome, categoria) VALUES('Spring Boot', 'Programação');
INSERT INTO CURSO(nome, categoria) VALUES('HTML 5', 'Front-end');

INSERT INTO TOPICO(titulo, mensagem, data_criacao, status, autor_id, curso_id) VALUES('Dúvida', 'Erro ao criar projeto', '2019-05-05 18:00:00', 'NAO_RESPONDIDO', 1, 1);
INSERT INTO TOPICO(titulo, mensagem, data_criacao, status, autor_id, curso_id) VALUES('Dúvida 2', 'Projeto não compila', '2019-05-05 19:00:00', 'NAO_RESPONDIDO', 1, 1);
INSERT INTO TOPICO(titulo, mensagem, data_criacao, status, autor_id, curso_id) VALUES('Dúvida 3', 'Tag HTML', '2019-05-05 20:00:00', 'NAO_RESPONDIDO', 1, 2);
