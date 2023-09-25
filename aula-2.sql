use aula;

create table cliente (
	id int primary key,
    nome varchar(100),
    idcidade int,
    constraint fkclientecidade foreign key (idcidade)
    references cidade(id)
);

insert into cliente values (1, 'Joao', 1);
insert into cliente values (2, 'Jose', 1);