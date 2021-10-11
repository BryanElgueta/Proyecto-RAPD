-- Procedimiento Almacenado para insertar Notas del 2020

delimiter $$
create procedure Ins_N2 (in _idA integer, in _idC integer, in _Nota2 numeric (2,1))
begin 
insert into Notas (idA, idC, Nota2) values (_idA, _idC, _Nota2);
end $$