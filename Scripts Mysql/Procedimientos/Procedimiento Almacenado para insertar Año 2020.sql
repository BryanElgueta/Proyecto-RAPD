-- Procedimiento Almacenado para insertar Año 2020

delimiter $$
create procedure  Ins_A2 (in _año2 integer)
begin 
insert into Año (año2) values (_año2);
end $$