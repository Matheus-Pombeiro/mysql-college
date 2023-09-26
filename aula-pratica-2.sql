use aulapratica;

create table aluno (
	id int,
    nome varchar(100) not null,
    genero char(01),
    nascimento date,
    estadoCivil char(01) check (estadoCivil in ('C', 'S', 'V', 'O')),
    salario decimal(10,2) unsigned default 0,
    email varchar(120) unique
);

describe aluno;

insert into aluno values (1, 'Helena Magalhães', 'F', '2000-01-01', 'C', 12500.99, 'helena.magalhaes@email.com'),
	(2, 'Nicolas Oliveira', 'M', '2002-12-10', 'S', 8500, 'nicolas.oliveira@email.com'),
	(3, 'Ana Rosa Silva', 'F', '1996-12-31', 'S', 8500, 'ana.rosa@email.com'),
	(4, 'Tales Heitor Souza', 'M', '2000-10-01', 'O', 7689, 'tales.heitor@email.com'),
	(5, 'Bia Meireles', 'F', '2002-03-14', 'O', 9450, 'bia.meireles@email.com'),
	(6, 'Pedro Filho', 'M', null, 'V', 6800, 'pedro.filho@email.com'),
	(7, 'Helena Soares', 'F', '1994-08-10', 'S', 8600, 'helena.soares@email.com');
    
select * from aluno;