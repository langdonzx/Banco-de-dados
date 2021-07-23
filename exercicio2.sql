create database atividade11

create table cobranca(
duplic char(6) primary key,
valor decimal (10,2) not null,
vencto date not null,
codcli char(3) not null

)

INSERT INTO cobranca VALUES(
230099,1000.00,'10/02/2002',820);
INSERT INTO cobranca VALUES(997818,3000.00,'11/11/2002',170);
INSERT INTO cobranca VALUES(202550,9518.55,'05/11/2002','750');
INSERT INTO cobranca VALUES(113340,2002.00,'2001/11/25','230');
INSERT INTO cobranca VALUES(900450,1200.00,'2002/09/09','340');
INSERT INTO cobranca VALUES(20020,2390.00,'2000/11/11','550');
INSERT INTO cobranca VALUES(100200,35000.00,'2002/10/01','230');
INSERT INTO cobranca VALUES(345611,.00,'2002/12/12','550');
INSERT INTO cobranca VALUES(900855,.00,'2001/10/10','340');
INSERT INTO cobranca VALUES(250013,.00,'2002/03/10','820');

use cobranca
select * from cobranca