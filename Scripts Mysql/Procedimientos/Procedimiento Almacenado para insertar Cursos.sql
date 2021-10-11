-- Procedimiento Almacenado para insertar Cursos

delimiter $$
create procedure Ins_C (in _Nombre varchar (12))
begin 
insert into Curso (Nombre) values (_Nombre);
end $$