#insert into Camioneros value (3423531, "Thiago", 911, "nashe", 100, 123);
#insert into Camiones value ("222", "modelo_2", "Tipo_2", 231);
#insert into Camiones _has_Camioneros value ("222", 3423531,  "203-04-26");
#insert into Provincias value (2314125, "Chaco");
#insert into Paquetes value (231, "bicicletovich", "Av. Gutierrez", "Mexico", 3423531, 2314125);
#a)
select Camioneros_DNI from Camiones_has_Camioneros where Camiones_Matrícula = "1" and fecha = "203-04-26";
#b)
select Nombre from Provincias;
#c)
update Camioneros set Salario = Salario + Salario * 10/100;
#d)
select 	Cod_paquete from Paquetes;
select Descripcion from Paquetes;
select Camioneros_DNI from Paquetes;
#e)
delete from Paquetes where Cod_paquete < 100;
