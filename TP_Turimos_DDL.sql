use TP_Turismo_DDL;
   create table Categoria (
        idCategoria int primary key,
        Hotel tinyint,
        Cabanas tinyint
	);
    create table Empleados (
        DNI int primary key,
        fecha_nacimiento datetime,
        nombre varchar(45),
        apellido varchar(45),
	);
    create table Alojamientos (
        idAlojamientos int primary key,
        Nombre varchar(45),
        direccion varchar(45),
        telefono int,
        cant_de_personas int,
        cocina tinyint,
        garaje tinyint,
        parrila tinyint,
        cant_de_pisos int,
        Bar_Restaurant varchar(45),
        categoria_idcategoria int,
        foreign key (categoria_idcategoria) references Categoria(idCategoria)
        on delete restrict
        on update cascade
	);
    	create table reservas (
	idreservas int primary key,
        fecha_inicio datetime,
	fecha_fin datetime,
	cant_de_personas int,
	descuento float,
	Empleado_DNI int,
	);
    create table clientes (
	DNI int primary key,
        nombre varchar(45),
	apellido varchar(45),
        direccion varchar(45),
        telefono int,
        celular int,
        reservas_idreservas int,
        foreign key (reservas_idreservas) references reservas(idreservas)
        on delete restrict
        on update cascade
	);
	create table Pago (
	idPago int primary key,
        tarjeta tinyint,
	cheque tinyint,
	efectvo tinyint
	);



    	create table viaje (
	idViaje int primary key,
        Aéreo tinyint,
	Bus tinyint
	);
	create table Paquete_de_viaje (
	idPaquete_de_viaje int primary key,
        lugar varchar(45),
	cant_de_dias int,
	cant_de_noches int,
        costo int,
        cant_de_excursiones int,
        pago_idpago int,
        Alojamientos_idAlojamientos int,
        Viaje_idViaje int,
        foreign key (Alojamientos_idAlojamientos) references Alojamientos(idAlojamientos),
        foreign key (pago_idpago) references Pago(idPago),
        foreign key (Viaje_idViaje) references viaje(idViaje)
        on delete set null
        on update cascade
	); 
insert into Categoria values (1, 1, 0),
			         (2, 0, 1);
insert into Alojamientos values (1, "nombre1", "direccion1", 18, 4, 1, 0, 1, 1, "Bar", 1),
				   (2, "nombre2", "direccion2", 19, 5, 1, 1, 1, 2, "Bar", 1);
insert into reservas values (1, "2000-05-07", "2024-05-07", 4),
			       (2, "2000-10-12", "2024-10-12", 5);
insert into clientes values (1, "Nombre1", "Apellido1", "Direccion1", 11, 12, 1),
			      (2, "Nombre2", "Apellido2", "Direccion2", 12, 13, 2);
insert into Pago values (1, 1, 0, 0),
			  (2,0, 0, 1);
insert into viaje values (1, 1, 0),
			  (2, 0, 1);
insert into Paquete_de_viaje values (1, "lugar1", 2, 1, 3000, 1, 1, 1, 1),
				           (2, "lugar2", 2, 1, 6000, 2, 2, 2, 2);           
delete from viaje where idViaje = 1;

select * from Paquete_de_viaje;

update viaje set idViaje = 100 where idViaje = 1;