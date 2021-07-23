CREATE DATABASE ladygaga;

USE ladygaga

CREATE TABLE cadfun (
  CODFUN  INT NOT NULL PRIMARY KEY,
  NOME    VARCHAR(40) NOT NULL,
  DEPTO   CHAR( 2) not null,
  FUNCAO  CHAR(20),
  FILHOS  INT,
  SALARIO DECIMAL(10, 2));
    
  SELECT * FROM CADFUN
  
INSERT INTO cadfun VALUES (15,'Marcos','2', 'analista', 2, 2184.33);
INSERT INTO cadfun VALUES (16,'andre', '2', null, 3, 2184.33);
INSERT INTO cadfun VALUES (108, 'ROBERTO CARLOS', '2','ANALISTA',0,2000.00);
INSERT INTO cadfun VALUES (109,'CARLOS AMARAL','1','DBA',1,15000.00);
INSERT INTO cadfun VALUES (110,'CARLOS GARDEL','1','PROGRAMADOR',0,1000.00);
INSERT INTO cadfun VALUES (111,'AMAURI LOPES','2','DBA',2,2000.00);
INSERT INTO cadfun VALUES (112,'MARCIO GARCIA','1','DBA',0,2500.00);

--Visualizar o nome e o salario do funcionario 15
select nome,salario from cadfun where codfun = 15

--Visualizar o nome, o depto e o Salario dos funcionarios que recebem acima de $2000
select nome, depto, salario from cadfun where salario >=2000;

--Visualizar o nome, depto e salario dos funcionarios que recebem menos que $2000
select nome, depto, salario from cadfun where salario <=2000;

--Vizualizar o nome e o depto e a função dos funcionarios que trabalham no depto 2 e tem a função de analista
select nome, depto,funcao from cadfun
where depto = '2' and funcao = 'Analista'

--Vizualizar o nome e o depto e a função dos funcionarios que trabalham no depto 2 ou tem a função de analista.
select nome, depto,funcao from cadfun
where depto = '2' or funcao = 'Analista'

--Visuazlizar o nome e o depto a funcao e o salario dos funcionarios que recebem salarios de 1200 e tem função programador
select nome, depto,funcao,salario from cadfun
where salario = 1200.00 and funcao = 'Programador';


--Visuazlizar o nome e o depto a funcao e o salario dos funcionarios que recebem salarios de 1200 ou tem função programador
select nome, depto,funcao, salario from cadfun
where salario = 1200.00 or funcao = 'Programador'

-- Visualizar o nome, depto, função e salario dos funcionatios que recebem de 1200 ate 3000
select nome, depto,funcao, salario from cadfun
where salario >= 1200.00 and salario <= 3000

--Visualizar todos os funcionarios que não tem função
select * from cadfun where funcao is null;

--Visualizar todos os funcionarios que tem função
select * from cadfun where funcao is not null;

--Visualizar todos os funcionarios que estão alocados nos seus departamentos
select * from cadfun where depto is not null;

--Visuzalizar os funcionarios que recebem entre 1700 e 2000.
select nome,salario from cadfun
where salario between 1700 and 2000;

--Visuzalizar os funcionarios que não recebem entre 1700 e 2000.
select nome,salario from cadfun
where salario not between 1700 and 2000;

--Visuzalizar os funcionarios que tem 3 ou mais filhos.
select nome,filhos from cadfun
where filhos between 3 and 6;

--Visuzalizar os funcionarios com função analista ou programador.
select * from cadfun where funcao in('Analista','Programador')

--Visuzalizar os funcionarios com função analista ou operador.
select * from cadfun where funcao in('Analista','Operador')

--Visuzalizar os funcionarios com função diferente de analista ou programador.
select * from cadfun where funcao not in('Analista','Programador')


--Visuzalizar os funcionarios que possuem filhos.
select * from cadfun where filhos in(1,2,3,4,5,6)

--Visuzalizar os funcionarios que começam com a letra A
select nome from cadfun where nome like 'A%';

--Visuzalizar os funcionarios que começam com a letra R
select nome from cadfun where nome like 'R%';

--Visuzalizar os funcionarios que tem AR no meio do nome
select nome from cadfun where nome like '%AR%';

--Visuzalizar os funcionarios que terminam com a letra L
select nome from cadfun where nome like '%L';

--Visualizar os funcionarios que possuem um caracter qualquer 
select nome from cadfun where nome like '_A%';
select nome from cadfun where nome like '__A%';
select nome from cadfun where nome like '_M%';

--ordenar os nomes dos funcionarios
select  * from cadfun order by nome;

--colocar o maior salario
select * from cadfun order by salario desc

--tirar depto repetidos
select depto from cadfun

--mostrar somente os deptos da empresa
select distinct depto from cadfun

select filhos from cadfun
select distinct filhos from cadfun