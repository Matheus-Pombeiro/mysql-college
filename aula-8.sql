create table cdd (
	id int primary key auto_increment,
    nome varchar(100) not null,
    uf char(02) not null
);

insert into cdd (nome, uf)
values ('Terra Boa', 'PR'), ('Niterói', 'RJ'), ('Terezina', 'SP'), ('Recife', 'PE');

select * from cdd;

select * from cdd where nome = 'Terra Boa' and uf = 'PR';

select * from cliente where cidadeId = 1 or cidadeId = 2 or cidadeId = 4 or cidadeId = 5;

-- or and in
select id, nome from estado where id = 1 or id = 2 or id = 3 or id = 4;
select id, nome from estado where id in (1, 2, 3, 4);