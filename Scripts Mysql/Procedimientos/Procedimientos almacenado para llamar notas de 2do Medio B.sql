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