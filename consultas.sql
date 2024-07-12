# insert into Clientes value (48242584, "Thiago", "Ashei", "Gutierrez", 57);
#insert into Clientes value (11111111, "Benjamin", "Liras", "Estanislao del campo", 8);
#insert into Proveedor value(18237123, "Raul Alejandro", "Rodriguez");
#insert into Producto value(678, "auto", 100, 18237123);
#insert into Producto value(1, "bicicleta", 50, 18237123);
#insert into Clientes_has_Producto value(48242584, 1);
#a)
select nombre, apellido from Clientes;
#b)
select apellido from Clientes where nombre = "Juan" and  edad > 18;
#c)
select * from Producto;
#d)
select Clientes_Dni from Clientes_has_Producto where Producto_Codigo = 1;
#e)
update Clientes set Dirrecion = "Kaiser" where Dni = 11111111;
select Dirrecion from Clientes where Dni = 11111111;