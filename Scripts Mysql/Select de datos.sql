-- Select que muestra una comparativa de promedios de un curso entre los años 2019 y 2020

select Curso.Nombre,  avg(Nota1) as "promedio 2019", avg(Nota2) as "Promedio 2020",
 (CASE 
when avg(Nota1) > avg(Nota2)
then "Bajo el promedio"
else "Subio el promedio"
END) as Comparacion
from Curso inner join Notas
on Curso.idC = Notas.idC
where Notas.idC = 1;

-- para revisar otros cursos cambiar el numero de la linea 281
-- 4to Basico A = 1
-- 4to Basico B = 2
-- 7mo Basico A = 3
-- 7mo Basico B = 4 
-- 2do Medio A = 5
-- 2do Medio B = 6
