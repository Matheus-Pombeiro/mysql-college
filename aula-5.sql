use segundaaula;

create table cidade (
	id int primary key auto_increment,
    nome varchar(120) not null,
    uf char(02) not null
);

create table estado (
	id int primary key auto_increment,
    nome varchar(100) not null
);

alter table cidade
modify uf int;

alter table cidade
add constraint fkCidadeEstado foreign key (uf) references estado(id);

alter table cidade
change uf estadoId int;

alter table cidade
modify estadoId int not null;

create table cliente (
	id int primary key auto_increment,
    nome varchar(100) not null,
    cidadeId int not null,
    constraint fkClienteCidade foreign key (cidadeId) references cidade(id)
);

describe cidade;
describe estado;
describe cliente;

insert into estado (nome)
values ('Paraná'), ('Santa Catarina'), ('Rio Grande do Sul'), ('São Paulo'), ('Rio de Janeiro');

select * from estado;

insert into cidade (nome, estadoId)
values ('Curitiba', 1), ('Florianópolis', 2), ('Porto Alegre', 3), ('São Paulo', 4), ('Rio de Janeiro', 5);

select * from cidade;