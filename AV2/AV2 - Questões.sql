### Nome: Yago Bastos

/* Q01 - Listar os produtos (descricao, cod_fornecedor, nome do fornecedor) do fornecedor cujo nome é "Eletronica Suave" */
select produtos.descricao, produtos.cod_fornecedor, fornecedor.nome FROM produtos,fornecedor WHERE produtos.cod_fornecedor = fornecedor.codigo AND fornecedor.nome = "Eletronica Suave" ;
/* Q02 - Listar a quantidade de pessoas existentes na tabela pessoas cujos nomes Não contenham "D" */
select COUNT(pessoas.nome) FROM pessoas WHERE pessoas.nome NOT LIKE "%d%";
/* Q03 - Exibir o nome da pessoa e a sua localização(todo o endereço / cep / numero / logradouro / bairro / cidade e estado) cujo RG = "123123" */
SELECT pessoas.nome, pessoas.rg, pessoas.numero, ceps.* FROM pessoas,ceps WHERE pessoas.cep = ceps.cep AND pessoas.rg LIKE"123123";
/* Q04 - Exibir a quantidade de produtos de cada fornecedor em ordem decrescente de quantidades (mostrar o codigo, nome do fornecedor e a quantidade)*/
select fornecedor.nome,produtos.cod_fornecedor,COUNT(produtos.cod_fornecedor) FROM produtos,fornecedor WHERE produtos.cod_fornecedor=fornecedor.codigo GROUP BY produtos.cod_fornecedor ORDER BY COUNT(produtos.cod_fornecedor) DESC;
/* Q05 - Listar o código do fornecedor, o nome do fornecedor e a somatória de preços unitários da tabela produtos por fornecedor */
select fornecedor.nome,produtos.cod_fornecedor,SUM(produtos.preco_unit) FROM produtos,fornecedor WHERE produtos.cod_fornecedor=fornecedor.codigo GROUP BY produtos.cod_fornecedor ORDER BY SUM(produtos.preco_unit) DESC;
/* Q06 - Listar o nome dos fornecedores, trocando a letra "a" pela letra "x" no nome e a quantidade de letras existentes no nome do fornecedor. */
select concat(left(Replace(upper(fornecedor.nome),'A','X'),1),right(Replace(lower(fornecedor.nome),'a','x'),length(fornecedor.nome)-1)),LENGTH(fornecedor.nome) FROM fornecedor;
/* Q07 - Exibir o total de produtos por compra e exibir também o nome e rg do cliente que fez a compra */
select compras.num_compra, pessoas.nome, identificacao.rg,SUM(compras.quant) from identificacao,pessoas,compras where identificacao.rg = pessoas.rg AND compras.num_compra=identificacao.num_compra  group by compras.num_compra;