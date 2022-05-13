# 3.Exibir o nome da Pessoa que efetuou mais compras

# Vamos por partes...OLHE A TABELA IDENTIFICACAO
# Nela você tem as pessoas (RG) de quem efetuou as compras...ok???
# Então vamos contar a quantidade de compras de cada pessoa primeiro...

select rg,count(*) from identificacao group by rg having count(*) >= 2;

# Temos as compras separadas por RGs...ok???
# Agora vamos colocar em ordem decrescente...

select rg,count(*) from identificacao group by rg order by count(*) DESC;

# Agora temos quem fez a maior quantidade de compras no inicio da tabela....vamos pegar os nomes das pessoas...
# O nome da pessoa está na tabela pessoas - Lembre-se: temos que linkar as tabelas...

select pessoas.nome, identificacao.rg,count(identificacao.rg) 
from identificacao,pessoas 
where identificacao.rg = pessoas.rg
group by identificacao.rg order by count(identificacao.rg) DESC;

# e para chegarmos a resposta do exercício, sem utilizar o comando MAX que estava nos atrapalhando, 
# vamos utilizar um comando chamado LIMIT no final, limitando o numero de registros que devemos mostrar, no nosso caso apenas o primeiro(1)

select pessoas.nome, identificacao.rg,count(identificacao.rg) 
from identificacao,pessoas 
where identificacao.rg = pessoas.rg
group by identificacao.rg order by count(identificacao.rg) DESC
limit 1;

# A mesma coisa você faz para achar quem fez menos compras, só que de lado inverso...ou seja ORDEM CRESCENTE...ok??!!
