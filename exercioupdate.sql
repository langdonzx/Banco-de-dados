create database	Comercio01
use comercio01

create table vendedor(
codvendedor int primary key,
nomevendedor varchar(50),
produtovendido  varchar(50),
cidade char(40),
estado char(2),
email varchar(50),
valorvendido decimal(10,2),
valorcomissao decimal(10,2) null
)
select *from vendedor

exec sp_help vendedor

create table produtos(
codproduto int primary key,
nomeproduto varchar(50),
precounitario decimal(10,2),
quant int,
precototal decimal (10,2) null
)

select *from produtos

exec sp_help produtos

--vendendor
INSERT INTO vendedor VALUES(1,'Camila','Celular','São Paulo','SP','camila@gmail.com',250,null);
INSERT INTO vendedor VALUES(2,'Bruno','Radiio','Manaus','AM',' bruno@gmail.com',150,null);
INSERT INTO vendedor VALUES(3,'Camille','TV','São Paulo','SP','camille@hotmail.com',1.500,null);
INSERT INTO vendedor VALUES(4,'Ricardo','Pendrive','São Paulo','SP','ricardo@outlook.com.br',80,null);
INSERT INTO vendedor VALUES(5,'Daniel','Notebook','São Paulo','SP','daniel@yahoo.com.br',1.000,null);
INSERT INTO vendedor VALUES(6,'Julia','Playstation 4','São Paulo','SP','julia@hotmail.com',1.800,null);
INSERT INTO vendedor VALUES(7,'Juliana','Teclado Positivo','São Paulo','SP','juliana@gmail.com',280,null);
INSERT INTO vendedor VALUES(8,'Gabriel','Fone de ouvido','São Paulo','SP','gabriel@gmail.com',100,null);
INSERT INTO vendedor VALUES(9,'Aline','Mouse','São Paulo','SP','aline@outlook.com.br',150,null);
INSERT INTO vendedor VALUES(10,'Danilo','Xbox One','São Paulo','SP','danilo@gmail.com.br',1.500,null);

--produtos
INSERT INTO produtos VALUES(10,'Celular',200,1,null);
INSERT INTO produtos VALUES(25,'Radiio',150.00,2,null);
INSERT INTO produtos VALUES(35,'TV',1.500,1,null);
INSERT INTO produtos VALUES(454,'Pendrive',80.00,2,null);
INSERT INTO produtos VALUES(55,'Notebook',1.000,1,null);
INSERT INTO produtos VALUES(89,'Playstation 4',1.800,1,null);
INSERT INTO produtos VALUES(7,'Teclado Positivo',280.00,3,null);
INSERT INTO produtos VALUES(9,'Fone de ouvido',100.00,5,null);
INSERT INTO produtos VALUES(2,'Mouse',150.00,3,null);
INSERT INTO produtos VALUES(18,'Xbox One',1.500,1,null);

--Aumentar 10% no valor unitario na tabela produtos.
  select *,precounitario = precounitario +(precounitario*0.10) from produtos 
   UPDATE produtos SET precounitario = precounitario +(precounitario*0.10) 
   SELECT * FROM produtos
 --Calcular a valor da comissão do vendedor 10% sobre o valor vendido. 
   UPDATE vendedor SET valorcomissao = valorvendido + (valorvendido*0.10)
    SELECT * FROM vendedor
	--Calcular o precototal de cada produto. 
	select precototal = precototal +(quant * precounitario)
	 SELECT * FROM produtos
	--Os vendedores 7 e 8 foram demitidos.
	delete from vendedor where codvendedor = 7