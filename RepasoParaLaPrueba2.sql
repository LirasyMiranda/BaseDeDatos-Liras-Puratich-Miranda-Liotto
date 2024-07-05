create table sala(
	codigo_s int primary key,
    capacidad int
);
create table pelicula (
	codigo_p int primary key,
    nombre varchar(45),
    genero varchar(45),
    fechaEstreno date
);
create table funcion(
	codigo_f int primary key,
    fecha date,
    hora datetime,
    precioEntrada int,
    codigo_p int,
    codigo_s int,
    foreign key (codigo_s) references sala(codigo_s),
    foreign key (codigo_p) references pelicula(codigo_p)
);
create table compra(
	codigo_c int primary key,
    cantEntradas int,
    fecha date,
    dniCliente int,
    codigo_f int,
    foreign key (codigo_f) references funcion(codigo_f)
);
create table butaca(
	letra varchar(45),
	numero int,
    primary key (letra, numero)
);
create table tiene(
	letra varchar(45),
    codigo_c int,
    primary key (letra, codigo_c),
	foreign key (letra) references butaca(letra)
);


#3
#Foto del pizarron de la profe

