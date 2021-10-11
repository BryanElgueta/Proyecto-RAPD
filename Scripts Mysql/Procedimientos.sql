-- Procedimiento Almacenado para insertar Año 2019

delimiter $$
create procedure  Ins_A1 (in _año1 integer)
begin 
insert into Año (año1) values (_año1);
end $$

-- Procedimiento Almacenado para insertar Año 2020

delimiter $$
create procedure  Ins_A2 (in _año2 integer)
begin 
insert into Año (año2) values (_año2);
end $$

-- Procedimiento Almacenado para insertar Cursos

delimiter $$
create procedure Ins_C (in _Nombre varchar (12))
begin 
insert into Curso (Nombre) values (_Nombre);
end $$

-- Procedimiento Almacenado para insertar Notas del 2019

delimiter $$
create procedure Ins_N1 (in _idA integer, in _idC integer, in _Nota1 numeric (2,1))
begin 
insert into Notas (idA, idC, Nota1) values (_idA, _idC, _Nota1);
end $$

-- Procedimiento Almacenado para insertar Notas del 2020

delimiter $$
create procedure Ins_N2 (in _idA integer, in _idC integer, in _Nota2 numeric (2,1))
begin 
insert into Notas (idA, idC, Nota2) values (_idA, _idC, _Nota2);
end $$