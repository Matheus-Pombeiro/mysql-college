use segundaaula;

describe funcionario;
select * from funcionario;

-- The both options below have the same meaning
select nome from funcionario where cidadeId >= 1 and cidadeId <= 4;
select nome, cidadeId from funcionario where cidadeId between 1 and 4 order by cidadeId;

-- order by (default): asc
select id, nome, cidadeId from cliente order by nome;
select id, nome, cidadeId from cliente order by nome desc;

describe cidade;

select estadoId from cidade
inner join estado on cidade.estadoId = estado.id;

select nome as 'Nome da Cidade' from cidade city where city.id between 1 and 6;

select * from estado limit 4;

select nome from estado union
select nome from cliente;