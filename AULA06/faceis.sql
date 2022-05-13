#Nome: Vitor Hugo Arias Caldeira
#Nome: Yago Bastos Do Rego

#Exercícios - Fáceis

#1. Listar todos os itens da tabela “Produtos”
SELECT produtos.* FROM produtos;

#2. Listar todos os Fornecedores (somente nomes)
SELECT fornecedor.nome FROM fornecedor;

#3. Listar todos os Fornecedores que possuem nomes começados pela letra “P”
SELECT fornecedor.nome FROM fornecedor WHERE fornecedor.nome LIKE "P%";

#4. Listar os nomes dos produtos e preco unitario da tabela produtos cujo preco unitário seja menor que R$ 2,00.
SELECT produtos.descricao, produtos.preco_unit FROM produtos WHERE produtos.preco_unit <"2,00";

#5. Listar CEP e Logradouro existentes no Bairro “Cambuí” em Campinas
SELECT ceps.logradouro, ceps.cep, ceps.bairro FROM ceps WHERE ceps.bairro ="Cambuí";

#6. Listar os produtos que custam mais que R$ 100,00
SELECT produtos.descricao, produtos.preco_unit FROM produtos WHERE produtos.preco_unit >"100,00";

#7. Exibir todos os ceps da “Avenida Benjamin Constant”
SELECT ceps.logradouro, ceps.cep FROM ceps WHERE ceps.logradouro="Avenida Benjamin Constant";

#8. Listar o cep da pessoa que possui o RG 17333999
SELECT pessoas.nome, pessoas.cep, pessoas.rg FROM pessoas WHERE pessoas.rg LIKE"17333999";

#9. Exibir a localização da pessoa que possui o RG 20733290 (“bairro /logradouro/ numero/...)
SELECT pessoas.nome, pessoas.rg, pessoas.numero, ceps.* FROM pessoas,ceps WHERE pessoas.cep = ceps.cep AND pessoas.rg LIKE"20733290";

#10. Listar todos os logradouros em ordem crescente
SELECT ceps.logradouro FROM ceps ORDER BY ceps.logradouro;