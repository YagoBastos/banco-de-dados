
/*   - Yago Bastos - 2°A - TI - num°9 - Turma dos inteligentes -   */

/* 1.) Listar todos os dados da tabela */
select * from estados;
/* 2.) Listar o nome do estado e a Sigla de todos os dados */
select nome, sigla from estados;
/* 3.) Listar somente o nome do Estado cuja sigla = 'MG' */
select nome from estados where sigla = 'MG';
/* 4.) Listar nome e tamanho cujo tamanho seja maior que 300 */
select nome, tamanho from estados where tamanho > 300;
/* 5.) Listar nome e tamanho cujo tamanho seja menor que 100 */
select nome, tamanho from estados where tamanho < 100;
/* 6.) Listar nome e tamanho cujo tamanho seja maior que 300 e menor que 400 */
select nome, tamanho from estados where tamanho > 300 and tamanho < 400;
/* 7.) Listar nome e sigla cujo nome comece com P */
select nome, sigla from estados where sigla like 'P%';
/* 8.) Listar nome e sigla cujo nome termine com "o" */
select nome, sigla from estados where sigla like '%O';
/* 9.) Listar nome e sigla onde no nome aparece a letra "a" */
select nome, sigla from estados where sigla like '%A%';
/* 10.) Listar nome, sigla e tamanho cujo tamanho seja maior que 300 e que tenha "a" no nome  */
select nome, sigla, tamanho from estados where tamanho > 300 and sigla like '%A%';
/* 11.) listar nome e sigla cujo nome comece com "P" ou "S" */
select nome, sigla from estados where sigla like 'P%' or sigla like 'S%';

/* ***** */

/* 12.) listar nome e sigla, ambos com letras maiusculas */
select upper(nome), upper(sigla) from estados;
/* 13.) Listar nome e sigla, ambos com letras minusculas */
select lower(nome), lower(sigla) from estados;
/* 14.) Listar nome e o tamanho do nome do estado */
select nome, length(nome) from estados;
/* 15.) Listar as 4 primeiras letras do nome do estado */
select left(nome,4) from estados;
/* 16.) Listar as 4 ultimas letras do nome do estado */
select right(nome,4) from estados;
/* 17.) Troque as letras "a" por "o" do nome dos estados */
select concat(left(Replace(upper(nome),'A','O'),1),right(Replace(lower(nome),'a','o'),length(nome)-1)) from estados;

/*UPPER - converte para maiusculas
LOWER - converte para minusculas
LENGTH - conta a quantidade de caracteres
LEFT - pega caracteres a esquerda do nome
RIGHT - pega caracteres a direita do nome
REPLACE - trocar os caracteres
SUBSTRING - pega uma quantidade de caracteres do campo.*/