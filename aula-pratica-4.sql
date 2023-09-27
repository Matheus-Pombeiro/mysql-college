use aulapratica;

alter table aluno
add telefone varchar(10);

select * from alunos;
describe alunos;

alter table aluno
add ddd int zerofill after email;

alter table aluno
change telefone celular varchar(12);

alter table aluno
rename to alunos;

alter table alunos
add constraint pkAluno primary key(id);

alter table alunos
drop primary key;

alter table alunos
modify id int primary key auto_increment;