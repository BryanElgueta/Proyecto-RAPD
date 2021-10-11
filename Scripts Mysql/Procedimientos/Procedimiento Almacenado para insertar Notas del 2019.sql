-- Procedimiento Almacenado para insertar Notas del 2019

delimiter $$
create procedure Ins_N1 (in _idA integer, in _idC integer, in _Nota1 numeric (2,1))
begin 
insert into Notas (idA, idC, Nota1) values (_idA, _idC, _Nota1);
end $$
