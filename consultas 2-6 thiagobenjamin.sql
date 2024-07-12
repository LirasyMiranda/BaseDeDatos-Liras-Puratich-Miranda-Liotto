insert into Cliente values 
	(1, "Thiago", "Ashei", "Calle1 777", 1100101111),
	(2, "Fran", "MIcheli", "Calle2 55", 113332222),
	(3, "Benja", "Liras", "Calle3 78", 11225553333),
	(4, "Nicolas", "Ornero", "Calle4 111", 143334444);

insert into Proveedor values
	(4, "Santiago", "Ortiz", "Gutierrez 567", "Buenos Aires", 1144445555),
	(5, "Santi", "Cantale", "Santiago 678", "San Luis", 1155556666),
	(6, "Santino", "Gerreto", "Santi 789", "Santa fe", 1166667777),
	(7, "Nombre", "Apellido", "Santino 890", "Chubut", 1177778888);

insert into Producto values
	(1, "Descripcion1", 625, 62, 6),
	(2, "Descripcion2", 3764, 45, 4),
	(3, "Descripcion3", 434, 19, 7),
	(4, "Descripcion4", 5643, 78, 5),
	(5, "Descripcion5", 943, 15, 7),
	(6, null, 844, 34, 7),
	(7, "Descripcion6", 7965, 67, 6),
	(8, "Descripcion7", 8764, 58, 5);

insert into Producto_has_Cliente values
	(4, 3, "2023-12-31"),
	(8, 2, "2022-8-12"),
	(1, 4, "2023-11-24"),
	(2, 1, "2020-6-1");


#A)
select Descripcion, Precio from Producto where Precio > 1000 order by Precio desc;

#B)
select * from Cliente where Apellido like "A%";

#C)
delete from Producto where Descripcion is null;

#D)
select * from Producto where Proveedor_Codigo = 7;

#E)
select Descripcion, Precio, Precio-Precio*0.1 from Producto;

select * from Cliente;
select * from Producto;
select * from Producto_has_Cliente;
select * from Proveedor;
