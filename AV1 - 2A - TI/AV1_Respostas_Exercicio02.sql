# Nome:    Yago Bastos n°9 TI 2°A             

/* 1.) Listar todos os dados da tabela pessoa */
select * from pessoas;
/* 2.) Listar somente os logradouros do Bairro "Centro" */
select logradouro from ceps where bairro = "centro";
/* 3.) Listar somente os dados da pessoa que possui RG = "123123" */
select * from pessoas where rg="123123";
/* 4.) Listar todos os registros da tabela ceps cujos dados NÃO sejam da cidade de Campinas */
select * from ceps where cidade!="Campinas";
/* 5.) Listar todos os registros da tabela ceps cujo cep comece com "088" */
select * from ceps where cep like '088%';
/* 6.) Listar todos os registros da tabela ceps cujo cep termine com "9" */
select * from ceps where cep like '%9';
/* 7.) Listar os nomes da tabela pessoas cujos nomes possuam "a" e "i" */
select nome from pessoas where nome like '%a%' '%i%';
/* 8.) Listar os registros da tabela ceps cujos ceps estejam entre "0100000" e "0200000" 
   (utilize comando between) */
select * from ceps where cep between '0100000' and '0200000';
/* 9.) Mostre somente a primeira letra em Maiuscula e o restante em Minuscula dos nomes 
       da tabela pessoas */
select concat(left(upper(nome),1),right(lower(nome),length(nome)-1)) from pessoas;
/* 10.) Mostre todos os nomes da tabela pessoas com letras minusculas e sem nenhum espaço em branco */
select replace(lower(nome),' ','') from pessoas;
