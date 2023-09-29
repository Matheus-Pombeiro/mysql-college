use segundaaula;

select * from cidade;
select * from cliente;

describe cliente;

insert into cliente (nome, cidadeId)
values ('Matheus', 1), ('Thiago', 4), ('Felipe', 5), ('Valentina', 2);

create table funcionario (
	id int primary key auto_increment,
    nome varchar(100) not null,
    cidadeId int not null,
    constraint fkFuncionarioCidade foreign key (cidadeId) references cidade(id)
);

describe funcionario;
select * from funcionario;

-- Add items in 'funcionário' from table 'cliente'
insert into funcionario (nome, cidadeId)
select nome, cidadeId from cliente;