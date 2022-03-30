DROP DATABASE IF EXISTS `exercicio01`;
CREATE DATABASE `exercicio01`;
USE `exercicio01`;

CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `sigla` varchar(250) DEFAULT NULL,
  `tamanho` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;


INSERT INTO `estados` VALUES (1,'Acre','AC',125);
INSERT INTO `estados` VALUES (2,'Alagoas','AL',250);
INSERT INTO `estados` VALUES (3,'Amazonas','AM',190);
INSERT INTO `estados` VALUES (4,'Amapá','AP',123);
INSERT INTO `estados` VALUES (5,'Bahia','BA',54);
INSERT INTO `estados` VALUES (6,'Ceará','CE',345);
INSERT INTO `estados` VALUES (7,'Distrito Federal','DF',56);
INSERT INTO `estados` VALUES (8,'Espirito Santo','ES',89);
INSERT INTO `estados` VALUES (9,'Goiás','GO',67);
INSERT INTO `estados` VALUES (10,'Maranhão','MA',456);
INSERT INTO `estados` VALUES (11,'Minas Gerais','MG',342);
INSERT INTO `estados` VALUES (12,'Mato Grosso do Sul','MS',455);
INSERT INTO `estados` VALUES (13,'Mato Grosso','MT',876);
INSERT INTO `estados` VALUES (14,'Pará','PA',123);
INSERT INTO `estados` VALUES (15,'Paraíba','PB',342);
INSERT INTO `estados` VALUES (16,'Pernambuco','PE',342);
INSERT INTO `estados` VALUES (17,'Piauí','PI',345);
INSERT INTO `estados` VALUES (18,'Paraná','PR',675);
INSERT INTO `estados` VALUES (19,'Rio de Janeiro','RJ',445);
INSERT INTO `estados` VALUES (20,'Rio Grande do Norte','RN',765);
INSERT INTO `estados` VALUES (21,'Rondônia','RO',456);
INSERT INTO `estados` VALUES (22,'Roraima','RR',345);
INSERT INTO `estados` VALUES (23,'Rio Grande do Sul','RS',453);
INSERT INTO `estados` VALUES (24,'Santa Catarina','SC',452);
INSERT INTO `estados` VALUES (25,'Sergipe','SE',234);
INSERT INTO `estados` VALUES (26,'São Paulo','SP',453);
INSERT INTO `estados` VALUES (27,'Tocantins','TO',753);


