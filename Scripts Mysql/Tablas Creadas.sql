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