# Host: localhost  (Version: 5.5.29)
# Date: 2022-03-16 09:21:00
# Generator: MySQL-Front 5.3  (Build 2.30)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

#
# Source for table "pesquisas"
#

DROP TABLE IF EXISTS `pesquisas`;
CREATE TABLE `pesquisas` (
  `num_pesquisa` int(11) NOT NULL AUTO_INCREMENT,
  `nome_realizou` varchar(30) DEFAULT NULL,
  `data_pesquisa` datetime DEFAULT NULL,
  `qual_pesquisa` varchar(255) DEFAULT NULL,
  `onde_foi_pesquisa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num_pesquisa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "pesquisas"
#

INSERT INTO `pesquisas` VALUES (1,'pedro','2021-06-15 00:00:00','qual é o nome mais comun de campinas?','Escolas de Campinas'),(2,'lucas','2022-05-20 00:00:00','ciclo da violencia','escolas, e bairros de são paulo'),(3,'joão','2003-10-06 00:00:00','qual o caminho a agua faz para chegar na torneira','sanasa'),(4,'jorge','2022-02-10 00:00:00','por que a cobra troca de pele','amazonas'),(5,'gustavo','2005-06-25 00:00:00','qual a verdadeira cor do ceu?','Uiversidades do brasil');

#
# Source for table "resultados"
#

DROP TABLE IF EXISTS `resultados`;
CREATE TABLE `resultados` (
  `num_pesquisa` int(11) NOT NULL,
  `nome_realizou` varchar(30) DEFAULT NULL,
  `data_fim` datetime DEFAULT NULL,
  `resultado` varchar(255) DEFAULT NULL,
  `resultados_esperados` varchar(255) DEFAULT NULL,
  KEY `num_pesquisa` (`num_pesquisa`),
  CONSTRAINT `resultados_ibfk_1` FOREIGN KEY (`num_pesquisa`) REFERENCES `pesquisas` (`num_pesquisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "resultados"
#

INSERT INTO `resultados` VALUES (1,'pedro','2020-09-30 00:00:00','enzo','sim'),(2,'lucas','2022-06-03 00:00:00','pesquiza em andamento','pesquisa em andamento'),(3,'joão','2022-05-06 00:00:00','a agua passa por diversas encanementos e filtros e processos','sim'),(4,'jorge','2015-05-24 00:00:00','pesquisa em andamento','pesquisa em andamento'),(5,'gustavo','2018-09-08 00:00:00','preto','não');

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
