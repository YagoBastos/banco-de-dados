# Host: localhost  (Version 5.7.36)
# Date: 2022-03-08 13:53:54
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "alunos"
#

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE `alunos` (
  `num_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `data_nascimento` datetime DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `profissao` varchar(40) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num_aluno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Data for table "alunos"
#

/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'yago','2004-10-02 00:00:00',17,'yago@gmail.com','programador','C.K.Y corporate'),(2,'kauan','2004-11-03 00:00:00',17,'kauan@gmail.com','teste de qualidade','C.K.Y corporate'),(3,'caue','2004-10-14 00:00:00',17,'caue@gmail.com','programador','C.K.Y corporate');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
