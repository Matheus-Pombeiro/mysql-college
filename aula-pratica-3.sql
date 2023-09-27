use aulapratica;

create table estado (
	id int not null primary key auto_increment,
    nome varchar(100) not null
);

insert into estado (nome) values ('Parana'), ('Bahia');

select * from estado;

create table cidade (
	id int not null primary key auto_increment,
    nome varchar(100),
    idEstado int,
    constraint fkCidadeEstado foreign key (idEstado) references estado(id)
);

insert into cidade (nome, idEstado) values ('Curitiba', 1), ('Salvador', 2), ('Terra Boa', 1);

select * from cidade;