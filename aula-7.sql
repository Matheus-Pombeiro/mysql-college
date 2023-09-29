describe cidade;
select * from cidade;

insert into cidade (nome, estadoId)
values ('Santos', 4), ('Terra Boa', 1), ('Cianorte', 1), ('Bombas', 2), ('Macaé', 5), ('Niterói', 5), ('Maringá', 1);

update cidade set nome = 'Campo Mourão' where id = 12;
update cidade set nome = 'Maringá', estadoId = 1 where id = 6;

delete from cidade where id = 8;

set SQL_SAFE_UPDATES = 0;

update cidade set nome = 'Teste';	-- Don't do this again! You can have troubles!