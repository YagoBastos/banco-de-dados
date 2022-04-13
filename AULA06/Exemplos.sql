#Exemplo de MAX
select max(descricao)as produto,max(preco_unit)as preço from produtos;

#Exemplo de MIN
select min(descricao)as produto,min(preco_unit)as preço from produtos;

#Exemplo de AVG
select avg(preco_unit)as media from produtos;

#Exemplo de FORMAT
select format(avg(preco_unit),2)as media from produtos;

#Exemplo de COUNT
select COUNT(*)as ceps from ceps;

#Exemplo de COUNT + DISTINCT
SELECT COUNT(DISTINCT(bairro))as bairros from ceps;

#Exemplo de COUNT + GROUP BY
SELECT bairro,COUNT(*)as ruas from ceps group by bairro;

#Exemplo de COUNT + GROUP BY
SELECT cod_fornecedor as fornecedor,COUNT(*)as produtos from produtos group by cod_fornecedor;

#Exemplo de COUNT + GROUP BY + ORDER BY
SELECT cod_fornecedor as fornecedor,COUNT(*)as produtos from produtos group by cod_fornecedor ORDER By COUNT(*) desc;

#Exemplo de COUNT + GROUP BY + ORDER BY + ligação de tabelas
SELECT fornecedor.nome,produtos.cod_fornecedor,count(produtos.preco_unit)as produtos from produtos,fornecedor where fornecedor.codigo=produtos.cod_fornecedor GROUP by produtos.cod_fornecedor order by COUNT(produtos.descricao)desc;

#Exemplo de select dentro de select
select descricao,preco_unit from produtos where preco_unit = (select max(preco_unit) from produtos);

#Exemplo de select dentro de select
select descricao,preco_unit from produtos where preco_unit = (select min(preco_unit) from produtos);

