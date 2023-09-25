use aula;

create table cidade (
	id int primary key auto_increment,
    nome varchar(130) not null,
    cepGeral int unsigned zerofill
);

-- Unsigned: Doesn't allow negative numbers
-- Zerofill: fill the empty left spaces of a number with one zero or more

select * from cidade;
describe cidade;

-- Add column to table
alter table cidade		
add dddd char(05);

-- Change the column's name
alter table cidade		
change dddd ddd char(05);

-- Modify the column's structure
alter table cidade
modify ddd char(03);

-- Insert one value to table
insert into cidade (nome, cepGeral, ddd)
values ('Terra Boa', 87240000, 044);

-- Insert two values to table
insert into cidade (nome, cepGeral, ddd)
values ('Curitiba', 97869000, 041),
('Macae', 46792000, 074);

alter table cidade
add prefeito varchar(100);

-- Delete a predefined column from table
alter table cidade
drop prefeito;