CREATE DATABASE Exercicios;

USE Exercicios;

DROP TABLE IF EXISTS clientes;
CREATE TABLE IF NOT EXISTS clientes (
  codigo varchar(5) NOT NULL DEFAULT '' ,
  nome varchar(20) ,
  endereco varchar(30) ,
  bairro varchar(20) ,
  cidade varchar(20) ,
  estado varchar(2) ,
  fone varchar(12) ,
  fax varchar(12) ,
  PRIMARY KEY (codigo)
);


DROP TABLE IF EXISTS itens;
CREATE TABLE IF NOT EXISTS itens (
  ordem_servico varchar(5) ,
  codigo varchar(5) NOT NULL DEFAULT '' ,
  quantidade int(3) 
);

DROP TABLE IF EXISTS pec_serv;
CREATE TABLE IF NOT EXISTS pec_serv (
  cod_peca varchar(5) ,
  descricao varchar(20) ,
  unidade varchar(2) ,
  preco_unitario double(12,2) ,
  tipo varchar(1) 
);


DROP TABLE IF EXISTS servicos;
CREATE TABLE IF NOT EXISTS servicos (
  chapa varchar(8) ,
  ordem_servico varchar(5) ,
  data_entrada date ,
  inicio date ,
  termino date 
);


DROP TABLE IF EXISTS veiculos;
CREATE TABLE IF NOT EXISTS veiculos (
  codigo varchar(5) ,
  chapa varchar(8) NOT NULL DEFAULT '' ,
  modelo varchar(20) ,
  ano varchar(2) ,
  cor varchar(15) ,
  PRIMARY KEY (chapa)
);

