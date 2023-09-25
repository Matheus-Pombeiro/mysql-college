show databases;
create database aula;
use aula;
select database();
-- Comentário de linha
/*Comentário de mais de uma linha*/

create table exemplo (
	id int,
    nome nvarchar(100)
);

show tables;

insert into exemplo (id, nome) values (1, 'Ana');

select * from exemplo;