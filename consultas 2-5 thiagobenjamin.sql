insert into Paciente values
	(1, "Matia", "Rui", "Calle1 111", "CABA", "Buenos aires", "1041", 1122223333, "1992-6-25"),
	(2, "LOlo", "Tabuada", "Calle2 777", "Cordoba", "Cordoba", "2144", 1133334444, "1978-1-5"),
	(3, "Fran", "MIshelli", "Calle3 888", "Mendoza" ,"Mendoza", "8915", 1144445555, "2012-10-11"),
	(4, "Camilin", "Rearte", "Calle4 55", "Rosario", "Santa Fe", "5639", 1155556666, "1986-8-19");

insert into Medico values 
	(1, "Benja", "Liras", 1166667777, "Traumatologo"),
	(2, "Coca", "Cola", 1177778888, "Pediatra"),
	(3, "THiago", "Ashei", 1188889999, "Doctor"),
	(5, "NIcola", "ornero", 1199990000, "Oftalmologo");

insert into Ingresos values 
	(1, 1, 1, "2020-3-6", 1, 3),
	(2, 2, 2, "2014-7-17", 3, 5),
	(3, 3, 3, "2019-3-15", 4, 2),
	(4, 4, 4, "2010-1-1", 2, 1);

#A)
select Nombre from Medico where Especialidad = "Traumatologo" order by apellido;


#B)
delete from Ingresos where Fecha < "2018-5-3";


#C)
select Cama from Ingresos where Paciente_Codigo = 1;


#D)
update Medico set Especialidad = "Pediatra" where Codigo = 5;


#E)
select Nombre, Codigo from Medico where Nombre like "a%";

select * from Paciente;
select * from Medico;
select * from Ingresos;
