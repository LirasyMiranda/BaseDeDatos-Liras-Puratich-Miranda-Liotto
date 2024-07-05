#REPASO PARA EL EXAMEN 1



create table profesor(
	DNI int primary key,
    nombre varchar(45),
    apellido varchar(45),
    direccion varchar(45),
    telefono varchar(45),
    añoIngreso_p int
);
create table alumno(
	DNI int primary key,
    nombre varchar(45),
    telefono int,
    direccion varchar(45),
    apellido varchar(45),
    añoIngreso int
);
create table materia(
    codigo_m int primary key,
    nombre varchar(45),
    cantHorasSemanales int,
    profesor_DNI int,
    foreign key (profesor_DNI) references profesor(DNI)
);
create table falta (
	codigo_f int primary key,
    fecha date,
    justificada varchar(45),
    alumno_DNI int,
    foreign key (alumno_DNI) references alumno(DNI)
);
create table cursa(
	Trimestre1 int,
    Trimestre2 int,
    Trimestre3 int,
    año int,
    cantfaltas int,
	alumno_DNI int,
	codigo_m int,
    primary key(alumno_DNI, codigo_m),
	foreign key (alumno_DNI) references alumno(DNI),
    foreign key (codigo_m) references materia(codigo_m)
);

#2)
alter table cursa add check (cantfaltas > 0);
#3)
select count(*) from cursa join materia on materia.codigo_m = cursa.codigo_m where Trimestre1 > 6 and Trimestre2 > 6 and Trimestre3 > 6 and cursa.año = 2024 and materia.nombre = "Matemarica 1";
#4)
select nombre, DNI from alumno join cursa on alumno.DNI=alumno_DNI join materia on materia.codigo_m = cursa.codigo_m where Trimestre1 >= 6 and Trimestre2 >= 6 and Trimestre3 >= 6 group by alumno.DNI having count(*) > 12;
#5)
select count(*) from profesor group by añoingreso_p;
#6)
select max(Trimestre3) from cursa join materia on materia.codigo_m = cursa.codigo_m where materia.nombre = "Base de datos";
#7)
select count(*) from cursa group by alumno_DNI = DNI having sum(cantfaltas) = 0;

