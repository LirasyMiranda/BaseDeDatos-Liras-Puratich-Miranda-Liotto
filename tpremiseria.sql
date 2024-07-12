CREATE DATABASE TpRemiseria;

CREATE TABLE Clientes(
id int,
dni int,
nombre varchar(45),
apellido varchar(45),
telefono int,
direccion varchar(45),
observaciones varchar(45),
cuenta int,
primary key (id),
foreign key(cuenta) references Cuenta(cvu)
);


CREATE TABLE Chofer(
idChofer int,
dniChofer int,
nombreChofer varchar(45),
apellidoChofer varchar(45),
telChofer int,
dirChofer varchar(45),
primary key (idChofer)
);

CREATE TABLE Auto(
patente varchar(45),
modelo varchar(45),
primary key (patente)
);

CREATE TABLE Viaje(
idViaje int,
chofer int,
auto varchar(45),
cliente int,
fecha date,
hora_de_llegada time,
costo int,
cuenta_corriente tinyint,
destino varchar(45),
primary key(idViaje),
foreign key(cliente) references Clientes(id),
foreign key(chofer) references Chofer(idChofer),
foreign key(auto) references Auto(patente)
);

CREATE TABLE Cuenta(
 cvu int,
 nombreCuenta varchar(45),
 apellidoCuenta varchar(45),
 monto int,
 primary key (cvu)
);
drop table Viaje;
ALTER TABLE Viaje add check (costo > 0);

insert into Clientes values (1, 11, "nombre1", "apellido1", 111, "Direccion1", "Observacion1", 11111),
							(2, 22, "nombre2", "apellido2", 222, "Direccion2", "Observacion2", 22222),
							(3, 33, "nombre3", "apellido3", 333, "Direccion3", "Observacion3", 33333),
							(4, 44, "nombre4", "apellido4", 444, "Direccion4", "Observacion4", 44444),
							(5, 55, "nombre5", "apellido5", 555, "Direccion5", "Observacion5", 55555);
                            
insert into Viaje values (1, 1, "abc1", 1, "2024-07-05", "11:11:11", 100, 1, "Adestino1"),
						 (2, 2, "abc2", 2, "2024-08-15", "22:22:22", 200, 0, "Bdestino2"),
                         (3, 3, "abc3", 3, "2024-09-05", "01:11:11", 300, 1, "Cdestino3"),
                         (4, 4, "abc4", 4, "2024-07-04", "11:11:40", 400, 1, "Ddestino4"),
                         (5, 5, "abc5", 2, "2023-10-10", "11:11:15", 500, 1, "Edestino5"),
                         (6, 5, "abc4", 2, "2024-07-06", "11:11:06", 600, 0, "Fdestino6"),
                         (7, 4, "abc3", 2, "2024-07-07", "11:11:07", 700, 1, "Gdestino7"),
                         (8, 3, "abc1", 3, "2023-07-08", "11:11:08", 800, 0, "Adestino8"),
                         (9, 1, "abc2", 2, "2022-07-09", "11:11:09", 900, 1, "Adestino9"),
                         (10, 1, "abc5", 5, "2022-07-09", "10:11:11", 1000, 1, "Bdestino10"),
                         (11, 2, "abc5", 2, "2023-10-16", "10:11:11", 2000, 0, "Bdestino10");
                         

insert into Auto values ("abc1", "Modelo1"),
						("abc2", "Modelo2"),
                        ("abc3", "Modelo3"),
                        ("abc4", "Modelo4"),
                        ("abc5", "Modelo5");
                        
insert into Chofer values(1,111, "nombre1", "apellido1", 11111, "dir1"),
						(2,222, "nombre2", "apellido2", 22222, "dir2"),
                        (3,333, "nombre3", "apellido3", 33333, "dir3"),
                        (4,444, "nombre4", "apellido4", 44444, "dir4"),
                        (5,555, "nombre5", "apellido5", 55555, "dir5");
                        
insert into Cuenta values(11111, "nombre1", "apellido1", 100),
						 (22222, "nombre2", "apellido2", 200),
						 (33333, "nombre3", "apellido3", -300),
                         (44444, "nombre4", "apellido4", 400),
                         (55555, "nombre5", "apellido5", -500);
#8)
delete from Chofer where idChofer = 1;
select * from Chofer;
#9)
delete from Viaje where cliente = 3;
select * from Viaje;
#10)
select count(*) from Auto;
#11)
select avg(costo) from Viaje where cliente = 4;
#12)
select max(costo) from Viaje where cliente = 3;
#13)
select * from Clientes where nombre like "A%";
#14)
select * from Viaje where fecha <= "2023-10-30" and fecha >= "2023-10-10" order by destino;
#15)
select monto from Clientes join Cuenta on cuenta = cvu where id = 5 and monto < 0;
#16)
select count(*) from Viaje group by chofer ;
#17)
select costo * 0.21 from Viaje;
#18)
select max(costo) from Viaje;
#19)
select min(costo) from Viaje;
#20)
select count(*) from Viaje group by chofer, fecha;
#21)
select count(*) from Viaje group by cliente having count(*) > 5;
#22)
select monto from Clientes
join Cuenta on cuenta = cvu join Viaje on id = cliente where cuenta_corriente = 1 and monto < 0;
#23)
select auto, nombreChofer, apellidoChofer, costo from Viaje join Chofer on chofer = idChofer where chofer = 4;
#24)
select id, nombre, apellido, count(*) from Viaje 
join Clientes on cliente = id where fecha like "2023%" group by cliente;
#25)
select count(*), sum(costo), sum(costo) * 0.18 from Viaje group by chofer;