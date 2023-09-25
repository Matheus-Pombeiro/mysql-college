create table aluno (
	id int primary key,
    nome varchar(130) not null,
    genero char(01),	-- O genero será 'F' ou 'M'
    estadoCivil char(01) check (estadoCivil in ('S', 'C', 'V')),
    renda decimal(10,2) default 0
);

insert into aluno values (1, 'Matheus Pombeiro', 'M', 'S', 3500.00);
insert into aluno values (2, 'Leonardo Pinheiro', 'M', 'C', 10000.00);
insert into aluno values (3, 'Marcelle Tamura', 'F', 'S', 20000.00);

select * from aluno;

describe aluno;