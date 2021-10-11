create database if not exists ProyectoRADP character set = utf8mb4;

use ProyectoRADP;

-- Actualizaciones 

drop table Notas;
drop table Curso;
drop table Año;
drop procedure Ins_N1;
drop procedure Ins_N2;
drop procedure Ins_C;
drop procedure Ins_A1;
drop procedure Ins_A2;

-- Tabla para almacenar años

create table if not exists Año (
idA integer not null auto_increment comment "identificador del año",
año1 integer comment "Año en que se encuentra el curso",
año2 integer comment "Año en que se encuentra el curso",
primary key (idA)
);

-- tabla para almacenar cursos

create table if not exists Curso (
idC integer not null auto_increment comment "identificador de el curso",
Nombre varchar (12) not null comment "Nivel en que se encuentra el curso",
primary key (idC)
);

-- tabla para almacenar notas 

create table if not exists Notas (
idN integer not null auto_increment comment "identificador de la nota",
Nota1 numeric (2,1) null comment "Nota de el año 2019",
Nota2  numeric (2,1) comment "Nota de el año 2020",
idA integer not null comment "identificador del año",
idC integer not null comment "identificador",
primary key (idN),
foreign key (idA) references Año (idA),
foreign key (idC) references Curso (idC)
);

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

-- Ingesta de años (Año 2019)

call Ins_A1 (19);

-- Ingesta de años (Año 2020)

call Ins_A2 (20);

-- Ingesta de cursos (Nombre)

call Ins_C("4to Basico-A");
call Ins_C("4to Basico-B");
call Ins_C("7mo Basico-A");
call Ins_C("7mo Basico-B");
call Ins_C("2do Medio-A");
call Ins_C("2do Medio-B");

-- Ingesta de Notas 4to Basico-A 2019 (idA, idC, Nota1)

call Ins_N1 (1,1,6.0); call Ins_N1 (1,1,5.7); call Ins_N1 (1,1,6.1);
call Ins_N1 (1,1,5.6); call Ins_N1 (1,1,6.6); call Ins_N1 (1,1,5.9);
call Ins_N1 (1,1,5.0); call Ins_N1 (1,1,5.6); call Ins_N1 (1,1,5.9);
call Ins_N1 (1,1,6.5); call Ins_N1 (1,1,5.4); call Ins_N1 (1,1,5.5);
call Ins_N1 (1,1,5.6); call Ins_N1 (1,1,5.0); call Ins_N1 (1,1,5.5);
call Ins_N1 (1,1,6.2); call Ins_N1 (1,1,6.1); call Ins_N1 (1,1,5.5);
call Ins_N1 (1,1,6.0); call Ins_N1 (1,1,5.8); call Ins_N1 (1,1,6.0);
call Ins_N1 (1,1,5.9); call Ins_N1 (1,1,5.7); call Ins_N1 (1,1,6.5); 
call Ins_N1 (1,1,5.5); call Ins_N1 (1,1,6.3); call Ins_N1 (1,1,4.7);
call Ins_N1 (1,1,5.4); call Ins_N1 (1,1,6.0); call Ins_N1 (1,1,5.8);
call Ins_N1 (1,1,6.4); call Ins_N1 (1,1,5.6);

-- Ingesta de Notas 4to Basico-B 2019 (idA, idC, Nota1)

call Ins_N1 (1,2,5.6); call Ins_N1 (1,2,5.6); call Ins_N1 (1,2,5.8);
call Ins_N1 (1,2,5.6); call Ins_N1 (1,2,5.8); call Ins_N1 (1,2,6.5); 
call Ins_N1 (1,2,6.2); call Ins_N1 (1,2,5.0); call Ins_N1 (1,2,5.5);
call Ins_N1 (1,2,5.6); call Ins_N1 (1,2,6.3); call Ins_N1 (1,2,5.9); 
call Ins_N1 (1,2,5.4); call Ins_N1 (1,2,5.1); call Ins_N1 (1,2,5.9);
call Ins_N1 (1,2,5.3); call Ins_N1 (1,2,6.3); call Ins_N1 (1,2,5.3);
call Ins_N1 (1,2,5.2); call Ins_N1 (1,2,5.3); call Ins_N1 (1,2,5.5);
call Ins_N1 (1,2,5.9);

-- Ingesta de notas 7mo Basico-A 2019 (idA, idC, Nota1)

call Ins_N1 (1,3,5.1); call Ins_N1 (1,3,6.4); call Ins_N1 (1,3,5.3);
call Ins_N1 (1,3,6.1); call Ins_N1 (1,3,5.5); call Ins_N1 (1,3,4.7);
call Ins_N1 (1,3,6.2); call Ins_N1 (1,3,5.5); call Ins_N1 (1,3,4.8);
call Ins_N1 (1,3,5.5); call Ins_N1 (1,3,6.0); call Ins_N1 (1,3,4.3);
call Ins_N1 (1,3,5.4); call Ins_N1 (1,3,4.8); call Ins_N1 (1,3,5.6);
call Ins_N1 (1,3,5.3); call Ins_N1 (1,3,4.6); call Ins_N1 (1,3,5.0);
call Ins_N1 (1,3,5.8); call Ins_N1 (1,3,6.4); call Ins_N1 (1,3,4.2);
call Ins_N1 (1,3,5.7); call Ins_N1 (1,3,6.0); call Ins_N1 (1,3,5.4);
call Ins_N1 (1,3,4.8); call Ins_N1 (1,3,5.0); call Ins_N1 (1,3,4.7);
call Ins_N1 (1,3,5.8); call Ins_N1 (1,3,5.9); call Ins_N1 (1,3,5.5);
call Ins_N1 (1,3,5.2);

-- Ingesta de notas 7mo Basico-B 2019 (idA, idC, Nota1)

call Ins_N1 (1,4,6.5); call Ins_N1 (1,4,5.6); call Ins_N1 (1,4,5.6);
call Ins_N1 (1,4,5.4); call Ins_N1 (1,4,5.9); call Ins_N1 (1,4,5.5);
call Ins_N1 (1,4,5.8); call Ins_N1 (1,4,5.6); call Ins_N1 (1,4,4.9);
call Ins_N1 (1,4,6.1); call Ins_N1 (1,4,4.8); call Ins_N1 (1,4,5.5);
call Ins_N1 (1,4,5.6); call Ins_N1 (1,4,5.1); call Ins_N1 (1,4,5.8);
call Ins_N1 (1,4,5.7); call Ins_N1 (1,4,5.1); call Ins_N1 (1,4,6.3);
call Ins_N1 (1,4,5.4); call Ins_N1 (1,4,5.4); call Ins_N1 (1,4,5.7);
call Ins_N1 (1,4,6.1); call Ins_N1 (1,4,5.8); call Ins_N1 (1,4,6.6);
call Ins_N1 (1,4,5.4); call Ins_N1 (1,4,5.6); call Ins_N1 (1,4,5.7);
call Ins_N1 (1,4,6.1); call Ins_N1 (1,4,5.4); call Ins_N1 (1,4,4.9);
call Ins_N1 (1,4,5.2);

-- Ingesta de notas 2do medio-A 2019 (idA, idC, Nota1)

call Ins_N1 (1,5,5.4); call Ins_N1 (1,5,5.6); call Ins_N1 (1,5,5.7);
call Ins_N1 (1,5,5.3); call Ins_N1 (1,5,6.1); call Ins_N1 (1,5,6.4);
call Ins_N1 (1,5,6.3); call Ins_N1 (1,5,5.4); call Ins_N1 (1,5,6.1);
call Ins_N1 (1,5,5.3); call Ins_N1 (1,5,6.3); call Ins_N1 (1,5,5.5);
call Ins_N1 (1,5,5.4); call Ins_N1 (1,5,5.7); call Ins_N1 (1,5,5.5);
call Ins_N1 (1,5,5.7); call Ins_N1 (1,5,6.2); call Ins_N1 (1,5,4.9);
call Ins_N1 (1,5,6.4); call Ins_N1 (1,5,5.7); call Ins_N1 (1,5,6.1);
call Ins_N1 (1,5,6.2); call Ins_N1 (1,5,5.5); call Ins_N1 (1,5,5.6);
call Ins_N1 (1,5,5.6); call Ins_N1 (1,5,5.9); call Ins_N1 (1,5,5.4);
call Ins_N1 (1,5,5.4); call Ins_N1 (1,5,5.9);

-- Ingesta de notas 2do medio-B 2019 (idA, idC, Nota1)

call Ins_N1 (1,6,6.0); call Ins_N1 (1,6,5.8); call Ins_N1 (1,6,6.0);
call Ins_N1 (1,6,5.7); call Ins_N1 (1,6,6.1); call Ins_N1 (1,6,5.7);
call Ins_N1 (1,6,5.5); call Ins_N1 (1,6,5.7); call Ins_N1 (1,6,5.9);
call Ins_N1 (1,6,5.3); call Ins_N1 (1,6,6.0); call Ins_N1 (1,6,5.6);
call Ins_N1 (1,6,5.4); call Ins_N1 (1,6,5.4); call Ins_N1 (1,6,6.1);
call Ins_N1 (1,6,5.9); call Ins_N1 (1,6,5.8); call Ins_N1 (1,6,5.2);
call Ins_N1 (1,6,5.6); call Ins_N1 (1,6,5.9); call Ins_N1 (1,6,5.5); 
call Ins_N1 (1,6,5.5); 

-- -----------------------------------------------------------
/*  ********************************************************* */
-- -----------------------------------------------------------

-- Ingesta de notas 4to Basico-A 2020 (idA, idC, Nota2)

call Ins_N2 (2,1,5.6); call Ins_N2 (2,1,6.7); call Ins_N2 (2,1,6.3);
call Ins_N2 (2,1,5.4); call Ins_N2 (2,1,6.6); call Ins_N2 (2,1,6.2);
call Ins_N2 (2,1,5.9); call Ins_N2 (2,1,6.0); call Ins_N2 (2,1,5.2);
call Ins_N2 (2,1,6.6); call Ins_N2 (2,1,5.2); call Ins_N2 (2,1,6.7);
call Ins_N2 (2,1,6.4); call Ins_N2 (2,1,6.6); call Ins_N2 (2,1,5.5);
call Ins_N2 (2,1,6.6); call Ins_N2 (2,1,6.7); call Ins_N2 (2,1,6.2);
call Ins_N2 (2,1,6.6); call Ins_N2 (2,1,6.0); call Ins_N2 (2,1,5.4);
call Ins_N2 (2,1,6.3); call Ins_N2 (2,1,5.3); call Ins_N2 (2,1,6.3);
call Ins_N2 (2,1,6.6); call Ins_N2 (2,1,4.6); call Ins_N2 (2,1,6.2);
call Ins_N2 (2,1,5.6); call Ins_N2 (2,1,6.6); call Ins_N2 (2,1,5.2);
call Ins_N2 (2,1,5.8); call Ins_N2 (2,1,5.8); call Ins_N2 (2,1,5.8);
call Ins_N2 (2,1,5.6); call Ins_N2 (2,1,6.1); call Ins_N2 (2,1,5.6);

-- Ingesta de notas 4to Basico-B 2020 (idA, idC, Nota2)

call Ins_N2 (2,2,4.4); call Ins_N2 (2,2,6.6); call Ins_N2 (2,2,5.6);
call Ins_N2 (2,2,4.8); call Ins_N2 (2,2,5.4); call Ins_N2 (2,2,6.5);
call Ins_N2 (2,2,6.7); call Ins_N2 (2,2,6.1); call Ins_N2 (2,2,6.1);
call Ins_N2 (2,2,1.7); call Ins_N2 (2,2,5.2); call Ins_N2 (2,2,5.4);
call Ins_N2 (2,2,4.6); call Ins_N2 (2,2,4.9); call Ins_N2 (2,2,6.6);
call Ins_N2 (2,2,5.1); call Ins_N2 (2,2,6.0); call Ins_N2 (2,2,6.5);
call Ins_N2 (2,2,6.6); call Ins_N2 (2,2,6.1); call Ins_N2 (2,2,6.0);
call Ins_N2 (2,2,6.3); call Ins_N2 (2,2,6.3); call Ins_N2 (2,2,6.1);
call Ins_N2 (2,2,6.5); call Ins_N2 (2,2,5.5); call Ins_N2 (2,2,4.9);
call Ins_N2 (2,2,6.7); call Ins_N2 (2,2,6.6); call Ins_N2 (2,2,4.1);
call Ins_N2 (2,2,6.3); call Ins_N2 (2,2,6.3); call Ins_N2 (2,2,4.5);
call Ins_N2 (2,2,5.1); call Ins_N2 (2,2,6.8); call Ins_N2 (2,2,6.7);
call Ins_N2 (2,2,6.7);

-- Ingesta de notas 7mo Basico-A 2020 (idA, idC, Nota2)

call Ins_N2 (2,3,5.1); call Ins_N2 (2,3,5.8); call Ins_N2 (2,3,5.9);
call Ins_N2 (2,3,4.6); call Ins_N2 (2,3,5.0); call Ins_N2 (2,3,5.3);
call Ins_N2 (2,3,6.0); call Ins_N2 (2,3,5.8); call Ins_N2 (2,3,6.1);
call Ins_N2 (2,3,5.6); call Ins_N2 (2,3,5.2); call Ins_N2 (2,3,5.4);
call Ins_N2 (2,3,5.5); call Ins_N2 (2,3,5.0); call Ins_N2 (2,3,6.3);
call Ins_N2 (2,3,5.5); call Ins_N2 (2,3,5.6); call Ins_N2 (2,3,5.9);
call Ins_N2 (2,3,5.9); call Ins_N2 (2,3,4.4); call Ins_N2 (2,3,5.1);
call Ins_N2 (2,3,4.9); call Ins_N2 (2,3,5.6); call Ins_N2 (2,3,4.9);
call Ins_N2 (2,3,4.8); call Ins_N2 (2,3,5.8); call Ins_N2 (2,3,5.7);
call Ins_N2 (2,3,5.4); call Ins_N2 (2,3,5.5); call Ins_N2 (2,3,5.7);

-- Ingesta de notas 7mo Basico-B 2020 (idA, idC, Nota2)

call Ins_N2 (2,4,6.3); call Ins_N2 (2,4,4.9); call Ins_N2 (2,4,6.2);
call Ins_N2 (2,4,4.8); call Ins_N2 (2,4,5.4); call Ins_N2 (2,4,4.7);
call Ins_N2 (2,4,5.2); call Ins_N2 (2,4,4.8); call Ins_N2 (2,4,5.1);
call Ins_N2 (2,4,4.9); call Ins_N2 (2,4,4.5); call Ins_N2 (2,4,5.1);
call Ins_N2 (2,4,4.7); call Ins_N2 (2,4,6.2); call Ins_N2 (2,4,5.7);
call Ins_N2 (2,4,6.2); call Ins_N2 (2,4,5.8); call Ins_N2 (2,4,5.2);
call Ins_N2 (2,4,5.3); call Ins_N2 (2,4,5.2); call Ins_N2 (2,4,6.4);
call Ins_N2 (2,4,5.2); call Ins_N2 (2,4,5.4); call Ins_N2 (2,4,5.9);
call Ins_N2 (2,4,4.8); call Ins_N2 (2,4,4.9); call Ins_N2 (2,4,5.5);
call Ins_N2 (2,4,5.3); call Ins_N2 (2,4,4.9); call Ins_N2 (2,4,4.6);

-- Ingesta de notas 2do Medio-A 2020 (idA, idC, Nota2)

call Ins_N2 (2,5,5.0); call Ins_N2 (2,5,5.7); call Ins_N2 (2,5,5.5);
call Ins_N2 (2,5,5.3); call Ins_N2 (2,5,5.6); call Ins_N2 (2,5,4.6);
call Ins_N2 (2,5,6.1); call Ins_N2 (2,5,5.4); call Ins_N2 (2,5,5.3);
call Ins_N2 (2,5,5.0); call Ins_N2 (2,5,5.0); call Ins_N2 (2,5,4.8); 
call Ins_N2 (2,5,6.0); call Ins_N2 (2,5,6.2); call Ins_N2 (2,5,6.1); 
call Ins_N2 (2,5,6.2); call Ins_N2 (2,5,5.4); call Ins_N2 (2,5,5.3); 
call Ins_N2 (2,5,5.5); call Ins_N2 (2,5,4.7); call Ins_N2 (2,5,4.7); 
call Ins_N2 (2,5,5.5); call Ins_N2 (2,5,5.8); call Ins_N2 (2,5,6.3); 
call Ins_N2 (2,5,6.2); call Ins_N2 (2,5,3.6); call Ins_N2 (2,5,5.6); 
call Ins_N2 (2,5,6.0); call Ins_N2 (2,5,5.4); call Ins_N2 (2,5,6.2); 
call Ins_N2 (2,5,5.1); 

-- Ingesta de notas 2do Medio-B 2020 (idA, idC, Nota2)

call Ins_N2 (2,6,5.2); call Ins_N2 (2,6,4.8); call Ins_N2 (2,6,4.9);
call Ins_N2 (2,6,5.5); call Ins_N2 (2,6,6.3); call Ins_N2 (2,6,5.3);
call Ins_N2 (2,6,5.0); call Ins_N2 (2,6,5.3); call Ins_N2 (2,6,6.2);
call Ins_N2 (2,6,5.5); call Ins_N2 (2,6,5.4); call Ins_N2 (2,6,2.3);
call Ins_N2 (2,6,2.6); call Ins_N2 (2,6,5.8); call Ins_N2 (2,6,4.6);
call Ins_N2 (2,6,2.5); call Ins_N2 (2,6,5.6); call Ins_N2 (2,6,5.9);
call Ins_N2 (2,6,5.4); call Ins_N2 (2,6,5.4); call Ins_N2 (2,6,5.2);
call Ins_N2 (2,6,4.7); call Ins_N2 (2,6,6.2); call Ins_N2 (2,6,3.1);
call Ins_N2 (2,6,5.2); call Ins_N2 (2,6,2.2); call Ins_N2 (2,6,3.7);
call Ins_N2 (2,6,4.4); call Ins_N2 (2,6,5.9); call Ins_N2 (2,6,4.9);

-- Procedimientos almacenado para llamar notas de 4to Basico A

delimiter $$
create procedure CuartoBasico_A ()
begin 
select Curso.Nombre,  avg(Nota1) as "promedio 2019", avg(Nota2) as "Promedio 2020",
 (CASE 
when avg(Nota1) > avg(Nota2)
then "Bajo el promedio"
else "Subio el promedio"
END) as Comparacion
from Curso inner join Notas
on Curso.idC = Notas.idC
where Notas.idC = 1;
end $$

-- Procedimientos almacenado para llamar notas de 4to Basico B

delimiter $$
create procedure CuartoBasico_B ()
begin 
select Curso.Nombre,  avg(Nota1) as "promedio 2019", avg(Nota2) as "Promedio 2020",
 (CASE 
when avg(Nota1) > avg(Nota2)
then "Bajo el promedio"
else "Subio el promedio"
END) as Comparacion
from Curso inner join Notas
on Curso.idC = Notas.idC
where Notas.idC = 2;
end $$

-- Procedimientos almacenado para llamar notas de 7mo Basico A

delimiter $$
create procedure SeptimoBasico_A ()
begin 
select Curso.Nombre,  avg(Nota1) as "promedio 2019", avg(Nota2) as "Promedio 2020",
 (CASE 
when avg(Nota1) > avg(Nota2)
then "Bajo el promedio"
else "Subio el promedio"
END) as Comparacion
from Curso inner join Notas
on Curso.idC = Notas.idC
where Notas.idC = 3;
end $$

-- Procedimientos almacenado para llamar notas de 7mo Basico B

delimiter $$
create procedure SeptimoBasico_B ()
begin 
select Curso.Nombre,  avg(Nota1) as "promedio 2019", avg(Nota2) as "Promedio 2020",
 (CASE 
when avg(Nota1) > avg(Nota2)
then "Bajo el promedio"
else "Subio el promedio"
END) as Comparacion
from Curso inner join Notas
on Curso.idC = Notas.idC
where Notas.idC = 4;
end $$

-- Procedimientos almacenado para llamar notas de 2do Medio A 

delimiter $$
create procedure SegundoMedio_A ()
begin 
select Curso.Nombre,  avg(Nota1) as "promedio 2019", avg(Nota2) as "Promedio 2020",
 (CASE 
when avg(Nota1) > avg(Nota2)
then "Bajo el promedio"
else "Subio el promedio"
END) as Comparacion
from Curso inner join Notas
on Curso.idC = Notas.idC
where Notas.idC = 5;
end $$

-- Procedimientos almacenado para llamar notas de 2do Medio B

delimiter $$
create procedure SegundoMedio_B ()
begin 
select Curso.Nombre,  avg(Nota1) as "promedio 2019", avg(Nota2) as "Promedio 2020",
 (CASE 
when avg(Nota1) > avg(Nota2)
then "Bajo el promedio"
else "Subio el promedio"
END) as Comparacion
from Curso inner join Notas
on Curso.idC = Notas.idC
where Notas.idC = 6;
end $$

-- Calls para llamar las notas de los cursos

-- Ejecutar de uno en uno para ver las notas 

call CuartoBasico_A;

call CuartoBasico_B;

call SeptimoBasico_A;

call SeptimoBasico_B;

call SegundoMedio_A;

call SegundoMedio_B;

