create database bd3;

use bd3;

create table alunos (
	id int (11)
	primary key auto_increment,
	nome varchar(255) not null,
    idade int (3),
	nascimento date default null
 );
 
-- insert 
insert into alunos (nome, nascimento) values ('Leo', '2011-03-04');
insert into alunos (nome, nascimento) values ('Amaral', '2012-03-04');
insert into alunos (nome, nascimento) values ('Bruno', '2013-03-04');
insert into alunos (nome, nascimento) values ('Giovani', null);
insert into alunos (nome, nascimento) values ('Matheus', '2015-03-04');

-- selecionar todos os registros
select nome, nascimento from alunos;

-- com filtro
select nascimento from alunos
where nascimento is null;

-- filtrar os resultados que tenha o campo nascimento nulo
select * from alunos
where nascimento is null;

-- lista de presenca - ordenada em ordem alfabetica
select distinct nome
from alunos
order by nome asc;

-- listar somente dois alunos
select * from alunos
limit 2;