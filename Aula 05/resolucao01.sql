/*1.) Listar todos os dados da tabela - tb_estados */
select tb_estados.* from tb_estados ;
/*2.) Listar todos os dados da tabela - tb_cidades  */
select tb_cidades.* from tb_cidades;
/*3.) Listar todas as cidades do estado de "Alagoas"  */
select tb_cidades.* from tb_cidades,tb_estados where tb_estados.id = tb_cidades.estado and tb_estados.nome = "Alagoas";
/*4.) Listar todos os estados que possuem na sigla uma letra "R"  */
select nome, sigla from tb_estados where sigla LIKE "%R%";
/*5.) Listar as cidades do estado do Amazonas que comecem com a letra "M"  */
select tb_cidades.nome, tb_cidades.uf from tb_cidades where uf like "AM" and nome like "M%";
/*6.) Listar os estados por ordem crescente de tamanho  */
select nome,tamanho from tb_estados order by tamanho;
/*7.) Listar os estados por ordem decrescente de tamanho */
select nome,tamanho from tb_estados order by tamanho desc;
/*8.) Listar a soma total de KM2 do Brasil  */
select sum(tamanho)as Km_Brasil from tb_estados;
/*9.) Listar a media de km2 do Brasil */
select avg(tamanho)as Media_Km from tb_estados;
/*10.) Listar a soma em KM2 dos estados que começam o nome com a letra "P" */
select sum(tamanho)as Km_estados_com_P from tb_estados where nome like "P%";
/*11.) Listar a quantidade de cidades de Sergipe  */
select count(nome)as cidades_de_sergipe from tb_cidades where uf like "SE";
/*12.) Listar a quantidade de cidades de todos os estados  */
select count(nome) as quantidade_de_cidades from tb_cidades;
/*13.) Listar o nome das cidades cujo estado possua um tamanho maior que 500 km2  */
select tb_cidades.nome, tb_estados.tamanho from tb_cidades,tb_estados where tb_estados.id = tb_cidades.estado and tb_estados.tamanho > 500;
/*14.) Listar as cidades cuja primeira letra do nome seja igual a primeira letra da sigla*/
select nome, uf from tb_cidades where left(nome,1) = left(uf,1);
/*15.) Listar as cidades cuja primeira letra do nome seja igual a primeira letra da sigla 
e o tamanho do estado seja maior que 300. */
select tb_cidades.nome, tb_cidades.uf,tb_estados.tamanho from tb_cidades, tb_estados where tb_estados.id = tb_cidades.estado and left(tb_cidades.nome,1) = left(tb_cidades.uf,1) and tb_estados.tamanho > 300;
/*16.) listar as cidades e estados cuja cidade possua um nome maior que 15 caracteres */
select tb_cidades.nome,tb_estados.nome from tb_cidades,tb_estados where tb_estados.id = tb_cidades.estado and length(tb_cidades.nome)>15;