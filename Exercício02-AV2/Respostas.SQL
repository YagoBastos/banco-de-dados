
/* 	Yago Bastos N°9 2A-TI  */

/*1.Listar todos os itens da tabela “PESSOAS”*/
select * from pessoas;

/*2.Listar todos os Bairros que não pertencem a cidade de Campinas.*/
select bairro, cidade from ceps where cidade!= "Campinas";

/*3.Listar CEP e Logradouro existentes no Bairro “Cambuí” em Campinas*/
select cep, logradouro, bairro from ceps where bairro="Cambui" and cidade="Campinas";

/*4.Exibir  todos os ceps da “Avenida Benjamin Constant”*/
select cep, logradouro from ceps where logradouro="Avenida Benjamin Constant";

/*5.Listar o cepda pessoa que possui o RG 17333999*/
select ceps.cep, pessoas.rg from ceps, pessoas where ceps.cep=pessoas.cep and pessoas.rg=17333999;

/*6.Exibir a localização da pessoa que possui o RG 20733290 (“bairro / logradouro/ numero/...)*/
select ceps.logradouro, pessoas.numero, ceps.bairro ,pessoas.rg from ceps, pessoas where ceps.cep=pessoas.cep and pessoas.rg=20733290;

/*7.Listar todos os logradouros em ordem crescente*/
select logradouro, cep from ceps order by cep; /* --> Como não especifica qual valor seria utilizado para ordenar utilizei o cep.*/

/*8.Listar todos os logradouros em ordem decrescente*/
select logradouro, cep from ceps order by cep desc; /* --> Como não especifica qual valor seria utilizado para ordenar utilizei o cep.*/

/*9.Listar todas as cidades existentes na tabela CEPS (Distinct)*/
select distinct cidade from ceps;

/*10.Listar a quantidade de logradouros do Bairro “Centro” (Count)*/
select count(logradouro)as ruas_centro from ceps where bairro="Centro";

/*11.Listar os Ceps que possuem “2” no numero (Like)*/ 
select cep from ceps where cep like "%2%";

/*12.Conte a quantidade de Ceps que possuem “2” no numero*/
select count(cep)as ceps_com_2 from ceps where cep like "%2%";
