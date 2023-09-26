-- Crating and using a new database
create database aulaPratica;
use aulaPratica;
select database();

-- To delete a table, use the following comand: drop table table's name

-- Create 'produto' and insert items in it

create table produto (
	id int not null,
    descricao varchar(100),
    preco decimal(8,2) unsigned
);

insert into produto (id, descricao, preco)
values (1, 'Galaxy J1 Mini', 400.50);

insert into produto values (2, 'Notebook Acer Nitro', 5000),
(3, 'PlayStation 4', 2399.99);

select * from produto;
select * from produto order by preco desc;		-- Order by default: asc (from smallest to largest) 

-- Delete table 'produto' and database 'aula'

drop table produto;
drop database aula;