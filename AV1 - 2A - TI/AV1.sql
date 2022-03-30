DROP DATABASE IF EXISTS `av1`;
CREATE DATABASE `av1`; 
USE `av1`;

CREATE TABLE `ceps` (
  `cep` varchar(15) NOT NULL default '13100000',
  `logradouro` varchar(100) default NULL,
  `bairro` varchar(50) default NULL,
  `cidade` varchar(50) default NULL,
  `estado` varchar(3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `pessoas` (
  `rg` varchar(20) default NULL,
  `nome` varchar(50) default NULL,
  `cep` varchar(15) default NULL,
  `numero` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


delete from pessoas;

INSERT INTO `pessoas` (`rg`,`nome`,`cep`,`numero`) VALUES ('20733290','José da Silva','010142','12');
INSERT INTO `pessoas` (`rg`,`nome`,`cep`,`numero`) VALUES ('17333999','Maria das Dores','015260','34');
INSERT INTO `pessoas` (`rg`,`nome`,`cep`,`numero`) VALUES ('12121212','Samuel Dandes','088300','206');
INSERT INTO `pessoas` (`rg`,`nome`,`cep`,`numero`) VALUES ('7123456','Josefina Farias','100675','34');
INSERT INTO `pessoas` (`rg`,`nome`,`cep`,`numero`) VALUES ('123123','Marcelo Dias','100770','456');

delete from ceps;

INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010000','Avenida Doutor Moraes Sales','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010001','Avenida Doutor Moraes Sales','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010002','Avenida Doutor Moraes Sales','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010091','Largo do Rosário','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010140','Avenida Benjamin Constant','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010141','Avenida Benjamin Constant','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010142','Avenida Benjamin Constant','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010160','Avenida Doutor Thomaz Alves','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010180','Praça dos Ferroviários','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('010211','Avenida Orozimbo Maia','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('012000','Avenida Francisco Glicério','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('013061','Avenida Senador Saraiva','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('013161','Avenida Andrade Neves','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('015100','Avenida Anchieta','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('015102','Largo das Andorinhas','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('015260','Largo Dom Pedro II','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('015295','Avenida Júlio de Mesquita','Centro','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('024000','Avenida Coronel Silva Teles','Cambuí','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('024030','Avenida João Mendes Júnior','Cambuí','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('024515','Praça Adamina Del Soldato Saad','Cambuí','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('024519','Praça Pedro Magalhães Júnior','Cambuí','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('025005','Avenida Benjamin Constant','Cambuí','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('025060','Avenida Júlio de Mesquita','Cambuí','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('025061','Avenida Júlio de Mesquita','Cambuí','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100821','Rua 12','Jardim Catatau','Valinhos','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('065841','Rua doze','Jardim Londres','Jaguariuna','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('025065','Largo da City Banda','Cambuí','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('025320','Avenida José de Souza Campos','Cambuí','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('088170','Avenida do Cobalto','Parque São Quirino','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('088300','Avenida Doutor Júlio Soares de Arruda','Parque São Quirino','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('088305','Praça Manoel Romero','Parque São Quirino','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('088307','Praça Doutor Luiz Antônio Pompeu de Camargo','Parque São Quirino','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('088309','Praça Lafayette Arruda Camargo Filho','Parque São Quirino','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('088340','Avenida Hermínia de Andrade Couto e Silva','Parque São Quirino','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('088359','Praça Moysés Marques dos Santos','Parque São Quirino','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('088540','Avenida Lafayete Arruda Camargo','Parque São Quirino','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('088556','Praça José Plínio Guimarães','Parque São Quirino','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100570','Rua Argentino Cipriano','Jardim Baroneza','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100671','Rua Praia de Guarapari','Jardim Baroneza','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100672','Rua Praia de Itapoã','Jardim Baroneza','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100673','Rua Praia de Parapuã','Jardim Baroneza','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100674','Rua Praia de Peruíbe','Jardim Baroneza','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100675','Rua Praia do Flamengo','Jardim Baroneza','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100676','Rua Praia do Leblon','Jardim Baroneza','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100677','Rua Praia do Perequê','Jardim Baroneza','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100770','Rua Praia Grande','Jardim Baroneza','Campinas','SP');
INSERT INTO `ceps` (`cep`,`logradouro`,`bairro`,`cidade`,`estado`) VALUES ('100830','Rua Praia de Ipanema','Jardim Baroneza','Campinas','SP');