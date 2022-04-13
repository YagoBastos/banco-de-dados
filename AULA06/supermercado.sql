/* Criacao do banco SUPERMERCADO     */
/* criacao das tabelas com os campos */ 



DROP DATABASE IF EXISTS `supermercado`;
CREATE DATABASE `supermercado`; 
USE `supermercado`;

CREATE TABLE `ceps` (
  `cep` varchar(15) NOT NULL default '13100000',
  `logradouro` varchar(100) default NULL,
  `bairro` varchar(50) default NULL,
  `cidade` varchar(50) default NULL,
  `estado` varchar(3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `compras` (
  `num_compra` int(11) default NULL,
  `cod_prod` varchar(5) default NULL,
  `quant` double(8,2) default NULL,
  `valor_final` double(10,2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `fornecedor` (
  `codigo` varchar(10) default NULL,
  `nome` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `identificacao` (
  `num_compra` int(11) default NULL,
  `rg` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `pessoas` (
  `rg` varchar(20) default NULL,
  `nome` varchar(50) default NULL,
  `cep` varchar(15) default NULL,
  `numero` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `produtos` (
  `descricao` varchar(100) default NULL,
  `preco_unit` double(8,2) default NULL,
  `cod_prod` varchar(5) default NULL,
  `cod_fornecedor` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

