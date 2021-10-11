-- Procedimiento Almacenado para insertar Año 2019

delimiter $$
create procedure  Ins_A1 (in _año1 integer)
begin 
insert into Año (año1) values (_año1);
end $$