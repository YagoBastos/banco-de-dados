#Nome: Vitor Hugo Arias Caldeira
#Nome: Yago Bastos Do Rego

#Exercícios - Simples

#1. Exibir a “quantidade” de ceps do bairro Centro
SELECT COUNT(ceps.cep)AS Ceps_Centro FROM ceps 
WHERE ceps.bairro ="Centro";

#2. Exibir a quantidade de compras efetuadas
SELECT COUNT(compras.num_compra)AS Compras FROM compras;

#3. Exibir o nome da Pessoa que efetuou mais compras
select pessoas.nome, identificacao.rg,count(identificacao.rg) from identificacao,pessoas 
where identificacao.rg = pessoas.rg 
group by identificacao.rg order by count(identificacao.rg) DESC
limit 1;

#4. Exibir o nome da Pessoa que efetuou menos compras
select pessoas.nome, identificacao.rg,count(identificacao.rg) from identificacao,pessoas 
where identificacao.rg = pessoas.rg
group by identificacao.rg order by count(identificacao.rg)
limit 1;

#5. Exibir o nome da pessoa que efetuou a compra de número 3
SELECT DISTINCT pessoas.nome,compras.num_compra FROM pessoas, identificacao, compras 
WHERE pessoas.rg=identificacao.rg AND identificacao.num_compra=compras.num_compra AND compras.num_compra="3";

#6. Exibir todos os RGs das pessoas que efetuaram compras (sem repetição)
SELECT DISTINCT identificacao.rg FROM identificacao;

#7. Exibir os produtos do fornecedor numero 5
SELECT produtos.descricao, produtos.cod_fornecedor FROM produtos 
WHERE produtos.cod_fornecedor = "5";

#8. Exibir a quantidade total de produtos do supermercado
SELECT COUNT(produtos.descricao)AS produtos FROM produtos;

#9. Exibir todos os produtos do fornecedor “Granja”
SELECT produtos.descricao FROM produtos, fornecedor 
WHERE produtos.cod_fornecedor = fornecedor.codigo and fornecedor.nome = "Granja";

#10. Exibir a quantidade de produtos do fornecedor “Sony”
SELECT COUNT(produtos.descricao)AS Quant_Produtos FROM produtos, fornecedor 
WHERE produtos.cod_fornecedor = fornecedor.codigo and fornecedor.nome = "Sony";

#11. Exibir o produto mais caro, juntamente com o nome do seu fornecedor
select fornecedor.nome,produtos.descricao,produtos.preco_unit from produtos,fornecedor 
where produtos.cod_fornecedor = fornecedor.codigo AND preco_unit = (select max(preco_unit) from produtos);

#12. Exibir o produto mas barato, juntamente com o nome do seu fornecedor
select fornecedor.nome,produtos.descricao,produtos.preco_unit from produtos,fornecedor 
where produtos.cod_fornecedor = fornecedor.codigo AND preco_unit = (select MIN(preco_unit) from produtos);

#13. Listar o nome das pessoas que possuam “a” no nome.
SELECT pessoas.nome FROM pessoas 
WHERE  pessoas.nome LIKE "%a%";

#14. Listar as pessoas e no moram no cep 13015100
SELECT pessoas.nome FROM pessoas 
WHERE  pessoas.nome LIKE "13015100";

#15. Listar a somatória de todos os preços unitários (geral)
SELECT SUM(produtos.preco_unit) AS Soma FROM produtos;

#16. Listar a somatória de todos os preços unitários do fornecedor 2
SELECT SUM(produtos.preco_unit) AS Soma FROM produtos 
WHERE produtos.cod_fornecedor = "2";

#17. Listar a somatória de todos os preços unitários de cada fornecedor (agrupados)
SELECT SUM(produtos.preco_unit) AS Soma, produtos.cod_fornecedor FROM produtos 
GROUP BY produtos.cod_fornecedor;

#18. Listar o nome da pessoa e a quantidade de itens comprados por ela cujo RG é 20733290
SELECT pessoas.nome,pessoas.rg, SUM(compras.quant) AS Quant_Produtos FROM compras,pessoas,identificacao 
WHERE compras.num_compra = identificacao.num_compra AND identificacao.rg = pessoas.rg AND pessoas.rg="20733290";

#19. Listar os ceps e logradouros existentes entre 024000 e 025065
SELECT ceps.cep, ceps.logradouro FROM ceps 
WHERE ceps.cep BETWEEN 024000 AND 025065;

#20. Listar todos os nomes dos produtos comprados pelo usuário que efetuou a compra numero 6.
SELECT produtos.descricao FROM compras, produtos 
WHERE compras.cod_prod = produtos.cod_prod and compras.num_compra="6";