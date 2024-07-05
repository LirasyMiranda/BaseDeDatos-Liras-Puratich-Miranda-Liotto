#insert into Ingresos values #(1234, 2, "2000-04-20", "ortopedica", 3214, 1),
							#(12314, 3, "2020-04-21", "simple", 43214, 5),
                            #(12344, 4, "2008-04-22", "doble", 53214, 5679),
                            #(123454, 5, "2023-04-23", "triple", 61234, 56789);
#insert into Medico values (3214, "Raul", "Gutierrez", 987654321, "odontologo"),
							#(43214, "Benja", "Liras", 87654321, "psicologo"),
                            #(53214, "Thiago", "Ashei", 7654321, "traumatologo"),
                            #(61234, "Chompilas", "Reartes", 654321, "traumatologo");
#insert into Paciente values #(1, "2008-04-20", 456123, "Cordoba", 1616, "Santino", "Cantale", "Gutierrez"),
							#(5, "2008-04-21", 45612, "Jujuy", 1615, "Ulises", "Coppati", "Gutierrezz");
                            #(5679, "2008-04-22", 456124, "Cordoba", 1616, "Santino", "Geretto", "Gutierrezzz"),
                            #(56789, "2008-04-23", 45613, "Buenos Aires", 1616, "Tomas", "Garayzar", "Gutierrezzzz");
#a)
select apellido from Medico where Especialidad = "traumatologo" order by apellido;
#b)
delete from Ingresos where Fecha < "2018-05-03";
select * from Ingresos;
#c)
select Cama from Ingresos where Paciente_Cod_Paciente = 1;

