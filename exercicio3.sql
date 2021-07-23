create database atividade1103

create table cobranca(
duplic char(6) primary key,
valor decimal (10,2) not null,
vencto date not null,
codcli char(3) not null
)



INSERT INTO cobranca VALUES('230099',1000.00,'10/02/2002','820');
INSERT INTO cobranca VALUES('997818',3000.00,'11/11/1999','170');
--INSERT INTO cobranca VALUES('202550',9518.55,'21/11/2002','750');
INSERT INTO cobranca VALUES('113340',2002.00,'25/11/2001','230');
INSERT INTO cobranca VALUES('202550',9518.55,'21/11/2002','340');
INSERT INTO cobranca VALUES('202550',9518.55,'21/11/2002','550');
INSERT INTO cobranca VALUES('202550',9518.55,'21/11/2002','230');

create table clientes (
cod char(6) primary key,
nome
end varchar
cidade varchar(20)
estado char(2)
cep char (9)



)


use cobranca
select * from cobranca