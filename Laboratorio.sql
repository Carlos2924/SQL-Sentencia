create database Laboratorio
use Laboratorio

--Ubicado en la base de datos construir las siguientes tablas con los respectivos
--campos y tipos de datos.
create table Profesor(
doc_prof varchar (11) primary key,
nom_prof varchar (30),
ape_prof varchar (30),
cate_prof int,
sal_prof int
);

create table Curso(
cod_curs int primary key,
nom_curs varchar (100),,
horas_cur int,
valor_cur int
);

create table Estudiante(
doc_est varchar (11) primary key,
nom_est varchar (30),
ape_est varchar (30),
edad_est int
);

create table Estudiantexcurso(
cod_cur_estcur int,
doc_est_estcur varchar (11),
fec_ini_estcur date,
foreign key (cod_cur_estcur) references Curso(cod_curs),
foreign key (doc_est_estcur) references Estudiante(doc_est),
);

create table Cliente(
id_cliente varchar (11) primary key,
nom_cli varchar (30),
ape_clie varchar (30),
dir_cliente varchar (100),
dep_cli varchar (20),
mes_cum_cli varchar (10),
);

create table Articulo(
id_art int primary key,
tit_art varchar (100),
aut_art varchar (100),
edi_art varchar (300),
prec_art int,
);

create table Pedido(
id_ped int primary key,
id_cli_ped varchar (11),
fec_ped date,
val_ped int
foreign key (id_cli_ped) references Cliente (id_cliente)
);

create table Articuloxpedido(
id_ped_artped int primary key,
id_art_artped int,
can_art_artped int,
val_ven_art_artped int,
foreign key (id_art_artped) references Articulo (id_art)
);

create table Compañia(
comnit varchar (11) primary key,
comnombre varchar (30),
comañofun int,
comreplegar varchar (100),
);

create table TiposAutomotores(
auttipo int primary key,
autnombre varchar (30),
);

create table Automotores(
autoplaca varchar (6) primary key,
automarca varchar (30),
autotipo int,
automodelo int,
autopasajeros int,
autocilindraje int,
autonumchasis varchar (20),
);

create table Aseguramientos(
asecodigo int primary key,
asefechainicio date,
asefechaexpiracion date,
asevalorasegurado int,
aseestado varchar (30),
asecosto int,
aseplaca varchar (30),
);

create table Incidentes(
incicodigo int primary key,
incifecha date,
inciplaca varchar (6),
incilugar varchar (40),
inciantheridos int,
incicanfatalidades int,
incicanautosinvolucrados int
);

--Insertar los siguientes registros seg�n las tablas que se presentan a continuaci�n:
insert into Profesor (doc_prof,nom_prof,ape_prof,cate_prof,sal_prof) values
('63502720','Martha','Perez',3,690000),
('91216904','Carlos','Rojas',2,950000),
('13826789','Maritza','Angarita',1,550000),
('1098765789','Alejandra','Torres',4,1100000);

select * from Profesor

insert into Curso (cod_curs,nom_curs,horas_cur,valor_cur) values
(149842,'Fundamentos de bases de datos',40,500000),
(250067,'Fundamentos de SQL',20,700000),
(289011,'Manejo de Mysql',45,550000),
(345671,'Fundamentals of Oracle',60,3000000);

select * from Curso

insert into Estudiante (doc_est,nom_est,ape_est,edad_est) values
(63502720,'Maria','Perez',23),
(91245678,'Carlos Jose','Lopez',23),
(1098098097,'Jonatan','Ardila',17),
(1098765679,'Carlos','Martinez',24);

select * from Estudiante

insert into Estudiantexcurso (cod_cur_estcur,doc_est_estcur,fec_ini_estcur) values
(149842,63502720,'01/02/2011'),
(250067,91245678,'01/03/2011'),
(289011,1098098097,'01/02/2011'),
(345671,1098765679,'01/04/2011');

select * from Estudiantexcurso

insert into Cliente (id_cliente,nom_cli,ape_clie,dir_cliente,dep_cli,mes_cum_cli) values
(63502718,'Maritza','Rojas','Calle 34 No. 14-45','Santander','Abril'),
(13890234,'Roger','Ariza','Cra 30 No. 13-45','Antioquia','Junio'),
(77191956,'Juan Carlos','Arenas','Diagonal 23 No. 12-34 apto 101', 'Valle','Marzo'),
(109876789,'Catalina','Zapata','Av. El Libertador No. 30-14','Cauca','Marzo')

select * from Cliente

insert into Articulo (id_art,tit_art,aut_art,edi_art,prec_art) values
(1,'Redes cisco','Ernesto Arigasello','Alfaomega-Rama',60000),
(2,'Facebook y Twitter para adultos','Veloso Claudio','Alfaomega',52000),
(3,'Creacion de un portal con php y mysql','Jacob Pavon Puertas','Alfaomega-Rama',40000),
(4,'Administracion de sistemas operativos','Julio Gomez Lopez','Alfaomega-Rama',55000)

select * from Articulo

set dateformat dmy
insert into Pedido (id_ped,id_cli_ped,fec_ped,val_ped) values
(1,63502718,'25/02/2012',120000),
(2,77191956,'30/04/2012',55000),
(3,63502718,'10/12/2011',260000),
(4,1098765789,'25/02/2012',1800000)

select * from Pedido

insert into Articuloxpedido (id_ped_artped,id_art_artped,can_art_artped,val_ven_art_artped) values
(1,1,5,60000),
(2,2,5,52000),
(3,3,10,40000),
(4,4,20,55000)

select * from Articuloxpedido

insert into Compañia (comnit,comnombre,comañofun,comreplegar) values
(800890890-2,'Seguros Atlantida',1998,'Carlos Lopez'),
(899999999-1,'Aseguradora Rojas',1991,'Luis Fernando Rojas'),
(899999999-5,'Seguros del Estado',2001,'Mar�a Margarita P�rez')

select * from Compañia

insert into TiposAutomotores (auttipo,autnombre) values
(1,'Automoviles'),
(2,'Camperos'),
(3,'Camiones')

select * from TiposAutomotores

insert into Automotores (autoplaca,automarca,autotipo,automodelo,autopasajeros,autocilindraje,autonumchasis) values
('FLL410','chevrolet corsa',1,2003,5,1400,'wywzzz167kk009d25'),
('DKZ820','renault stepway',1,2008,5,1600,'wywwzz157kk009d45'),
('KJQ920','kia sportage',2,2009,7,2000,'wywzzz157kk009d25')

select * from Automotores

insert into Aseguramientos (asecodigo,asefechainicio,asefechaexpiracion,asevalorasegurado,aseestado,asecosto,aseplaca) values
(1,'2012-09-30','2013-09-30',30000000,'Vigente',500000,'FLL420'),
(2,'2012-09-27','2013-09-27',35000000,'Vigente',600000,'DKZ820'),
(3,'2011-09-28','2012-09-28',50000000,'Vigente',800000,'KJQ920')

select * from Aseguramientos

insert into Incidentes (incicodigo,incifecha,inciplaca,incilugar,inciantheridos,incicanfatalidades,incicanautosinvolucrados) values
(1,'2012-09-30','DKZ820','Bucaramanga',0,0,2),
(2,'2012-09-27','FLL420','Giron',1,0,1),
(3,'2011-09-28','FLL420','Bucaramanga',1,0,2)

select * from Incidentes

--Muestre los salarios de los profesores ordenados por categor�a.
Select * from Profesor order by cate_prof;

--Muestre los cursos cuyo valor sea mayor a $500.000.
Select * from Curso where valor_cur > 500000;

--Cuente el n�mero de estudiantes cuya edad sea mayor a 22.
Select count(edad_est) from Estudiante where edad_est > 22;

--Muestre el nombre y la edad del estudiante m�s joven.
Select nom_est, min(edad_est) from Estudiante;

--Calcule el valor promedio de los cursos cuyas horas sean mayores a 40.
Select avg(valor_cur) from Curso where horas_cur>40;

--Obtener el sueldo promedio de los profesores de la categor�a 1.
Select avg(sal_prof) from Profesor where cate_prof =1;

--Muestre todos los campos de la tabla curso en orden ascendente seg�n el valor.
Select * from Curso order by valor_cur;

--Muestre el nombre del profesor con menor sueldo.
Select nom_prof from Profesor where sal_prof in(Select min(sal_prof) from Profesor);

--Visualizar todos los estudiantes (c�digo y nombre) que iniciaron cursos el 01/02/2011, 
--del curso debe mostrarse el nombre, las horas y el valor.
Select doc_est, nom_est, nom_curs, horas_cur, valor_cur
From Estudiante, Curso, Estudiantexcurso
Where cod_curs = cod_cur_estcur and doc_est = doc_est_estcur and fec_ini_estcur = 20110201;

--Visualice los profesores cuyo sueldo este entre $500.000 y $700.000.
Select * from Profesor where sal_prof > 500000 and sal_prof < 700000;

--Visualizar el nombre, apellido y direcci�n de todos aquellos clientes 
--que hayan realizado un pedido el d�a 25 /02/2012.
Select nom_cli, ape_clie, dir_cliente from Cliente, Pedido where fec_ped = 20120225;

--Listar todos los pedidos realizados incluyendo el nombre del art�culo.
Select id_ped, id_cli_ped, fec_ped, tit_art
From Pedido, Articuloxpedido, Articulo
Where id_art_artped= id_art;

--Visualizar los clientes que cumplen a�os en marzo.
Select nom_cli from Cliente where mes_cum_cli = 'Marzo';

--Visualizar los datos del pedido 1, incluyendo el nombre del cliente, 
--la direcci�n del mismo, el nombre y el valor de los art�culos que tiene dicho pedido.
Select id_ped, val_ped, dir_cliente, nom_cli from Pedido, Cliente where id_cliente=id_cli_ped and id_ped=1;

--Visualizar el nombre del cliente, la fecha y el valor del pedido m�s costoso.
Select nom_cli, fec_ped, val_ped from Cliente,Pedido
Where id_cliente=id_cli_ped and val_ped in(Select max(val_ped) from Pedido);

--Mostrar cuantos art�culos se tienen de cada editorial.
Select * from Articulo order by aut_art;

--Mostrar los pedidos con los respectivos art�culos (c�digo, nombre, valor y cantidad pedida).
Select id_ped, tit_art, val_ped, can_art_artped from Articulo, Pedido, Articuloxpedido
Where id_art = id_art_artped and id_ped = id_ped_artped;

--Visualizar todos los clientes organizados por apellido.
Select nom_cli, ape_clie from Cliente order by ape_clie;

--Visualizar todos los art�culos organizados por autor.
Select * from Articulo order by aut_art;

--Visualizar los pedidos que se han realizado para el articulo con id 2, el listado debe mostrar 
--el nombre y direcci�n del cliente, el respectivo n�mero de pedido y la cantidad solicitada.
Select nom_cli, dir_cliente, id_ped, can_art_artped
From Cliente,Pedido,Articuloxpedido
Where id_ped_artped=id_ped and id_cli_ped=id_cliente and id_art_artped = 2;

--Visualizar los datos de las empresas fundadas entre el a�o 1991 y 1998.
Select * from Compañia where comañofun >=1991 and comañofun <=1998;

--Listar los todos datos de los automotores cuya p�liza expira en octubre de 2013, 
--este reporte debe visualizar la placa, el modelo, la marca, n�mero de pasajeros, 
--cilindraje nombre de automotor, el valor de la p�liza y el valor asegurado.
Select autoplaca, automodelo, automarca, autopasajeros, autocilindraje, autnombre, asecosto, asevalorasegurado
From automotores,aseguramientos,tiposautomotores
Where autoplaca = aseplaca and auttipo = auttipo
And asefechaexpiracion <= 20130831 and asefechaexpiracion >= 20130801;

--Visualizar los datos de los incidentes ocurridos el 30 de septiembre de 2012, 
--con su respectivo n�mero de p�liza, fecha de inicio de la p�liza, 
--valor asegurado y valor de la p�liza.
Select inciplaca, incifecha, incilugar, incicodigo, asefechainicio, asecosto, aseestado, asevalorasegurado
From aseguramientos,incidentes
Where inciplaca = aseplaca and incifecha = 20120930;

--Visualizar los datos de los incidentes que han tenido un (1) herido, 
--este reporte debe visualizar la placa del automotor, 
--con los respectivos datos de la p�liza como son fecha de inicio, valor, estado y valor asegurado.
Select inciantheridos, autoplaca, incilugar, incifecha, asefechainicio, aseestado, asecosto, asevalorasegurado
From incidentes, aseguramientos, automotores
Where inciplaca = aseplaca and autoplaca = inciplaca and inciantheridos = 1;

--Visualizar todos los datos de la p�liza m�s costosa.
Select * from aseguramientos
Where asecosto in(Select max(asecosto) from aseguramientos);

--Visualizar los incidentes con el m�nimo n�mero de autos involucrados, 
--de este incidente visualizar el estado de la p�liza y el valor asegurado.
Select *, max(asecosto) from aseguramientos;

--Visualizar los incidentes del veh�culo con placas " FLL420", 
--este reporte debe visualizar la fecha, el lugar, la cantidad de heridos del incidente, 
--la fecha de inicio la de expiraci�n de la p�liza y el valor asegurado.
Select inciplaca, incifecha, incilugar, inciantheridos, asefechainicio, asefechaexpiracion, asevalorasegurado
From incidentes, aseguramientos
Where inciplaca=aseplaca and inciplaca = 'FLL420';

--Visualizar los datos de la empresa con nit 899999999-5.
Select * from Compañia where comnit = '899999999 5';

--Visualizar los datos de la p�liza cuyo valor asegurado es el m�s costoso, 
--este reporte adem�s de visualizar todos los datos de la p�liza, 
--debe presentar todos los datos del veh�culo que tiene dicha p�liza.
Select * from aseguramientos,automotores
Where aseplaca = autoplaca and asevalorasegurado in(Select max(asevalorasegurado) from aseguramientos);

--Visualizar los datos de las p�lizas de los automotores tipo 1, este reporte debe incluir placa, 
--marca, modelo, cilindraje del veh�culo junto con la fecha de inicio, 
--de finalizaci�n y estado de la p�liza.
Select autoplaca, automarca, automodelo, autocilindraje, asefechainicio, asefechaexpiracion, aseestado
From automotores,aseguramientos
Where autoplaca = aseplaca and autotipo =1;

--a. Dise�a un procedimientos almacenados para crear, editar, eliminar un registro en la
--tablas Compa�ia, Cliente, CURSO

--Tabla Compa�ia
create procedure crearCompañia(
@comnit varchar (11),
@comnombre varchar (30),
@comañofun int,
@comreplegar varchar (100)
)
as
begin
insert into Compañia(comnit,comnombre,comañofun,comreplegar)
	values (@comnit, @comnombre, @comañofun, @comreplegar);
end

create procedure editarCompañia(
@comnit varchar (11),
@comnombre varchar (30),
@comañofun int,
@comreplegar varchar (100)
)
as 
begin
update Compañia
	set comnit = @comnit, comnombre = @comnombre, comañofun = @comañofun, comreplegar = @comreplegar
end 

create procedure eliminarCompañia(
@comnit varchar (11),
@comnombre varchar (30),
@comañofun int,
@comreplegar varchar (100)
)
as
begin
delete from Compañia
	where comnit = @comnit
end

--Tabla Cliente
create procedure crearCliente(
@id_cliente varchar (11),
@nom_cli varchar (30),
@ape_clie varchar (30),
@dir_cliente varchar (100),
@dep_cli varchar (20),
@mes_cum_cli varchar (10)
)
as
begin 
insert into Cliente (id_cliente, nom_cli, ape_clie, dir_cliente, dep_cli, mes_cum_cli)
	values (@id_cliente, @nom_cli, @ape_clie, @dir_cliente, @dep_cli, @mes_cum_cli)
end

create procedure EditarCliente(
@id_cliente varchar (11),
@nom_cli varchar (30),
@ape_clie varchar (30),
@dir_cliente varchar (100),
@dep_cli varchar (20),
@mes_cum_cli varchar (10)
)
as
begin
update Cliente
	set id_cliente = @id_cliente, nom_cli = @nom_cli, ape_clie = @ape_clie, dir_cliente = @dir_cliente, dep_cli = @dep_cli, mes_cum_cli = @mes_cum_cli
end

create procedure eliminarCliente(
@id_cliente varchar (11),
@nom_cli varchar (30),
@ape_clie varchar (30),
@dir_cliente varchar (100),
@dep_cli varchar (20),
@mes_cum_cli varchar (10)
)
as
begin
delete from Cliente
	where id_cliente = @id_cliente
end
--Tabla Curso
create procedure crearCurso(
@cod_curs int,
@nom_curs varchar (100),
@horas_cur int,
@valor_cur int
)
as
begin
insert into Curso (cod_curs,nom_curs,horas_cur,valor_cur)
	values (@cod_curs, @nom_curs, @horas_cur, @valor_cur)
end

create procedure editarCurso(
@cod_curs int,
@nom_curs varchar (100),
@horas_cur int,
@valor_cur int
)
as
begin
   update Curso
   set cod_curs = @cod_curs, nom_curs = @nom_curs, horas_cur = @horas_cur, valor_cur = @valor_cur
end

create procedure eliminarCurso(
@cod_curs int,
@nom_curs varchar (100),
@horas_cur int,
@valor_cur int
)
as
begin
delete from Curso
	where cod_curs = @cod_curs
end

--b. Cree 50 registros para cada una de las tablas con datos variados (para todas).
insert into Profesor (doc_prof,nom_prof,ape_prof,cate_prof,sal_prof) values
('1234567891', 'Juan ', 'Pérez', 1, 50000),
('9876543213', 'María', 'López', 2 , 45000),
('5678901234', 'Carlos', 'Martínez', 3, 38000),
('2345678906', 'Laura', 'García', 1, 52000),
('3456789017', 'Pedro', 'Rodríguez', 3, 40000),
('4567890122', 'Ana', 'Fernández', 2, 47000),
('7890123453', 'José', 'Gómez', 1, 51000),
('8901234564', 'Marta', 'Díaz', 3, 39000),
('9012345675', 'David', 'Sánchez', 2, 48000),
('6789012346', 'Lucia', 'Jiménez', 1, 49000),
('1122334457', 'Alejandro', 'Torres', 3, 41000),
('5566778899', 'Isabel', 'Ruiz', 2, 46000),
('9988776651', 'Antonio', 'Vargas', 1, 53000),
('4433221102', 'Sofia', 'Moreno', 3, 42000),
('2244668800', 'Marcos ', 'Castro', 2, 49000),
('5522114494', 'Elena', 'Navarro', 1, 50000),
('7755993316', 'Rubén', 'Ortega', 3, 43000),
('1234876507', 'Clara', 'Delgado', 2, 48000),
('9988776608', 'Lucas', 'Mendoza', 1, 52000),
('5544332219', 'Paula', 'Ríos', 3, 44000),
('2233445561', 'Mateo', 'Silva', 2, 47000),
('1122334452', 'Valeria', 'Molina', 1, 51000),
('7788990013', 'Federico', 'Rojas', 3, 45000),
('9911223344', 'Andrea', 'Herrera', 2, 49000),
('6677889906', 'Daniel', 'Peralta', 1, 53000),
('6677000556', 'Natalia', 'González', 3, 46000),
('1122003344', 'Esteban', 'Ibarra', 2, 50000),
('8899112236', 'Julieta', 'Alvarez', 1, 54000),
('3322114454', 'Hugo', 'Torres', 3, 47000),
('1155992235', 'Lourdes', 'Sosa', 2, 52000),
('5566339923', 'Santiago', 'Blanco', 1, 55000),
('2244776612', 'Adriana', 'Romero', 3, 48000),
('9966332219', 'Renata', 'Flores', 2, 53000),
('3311225568', 'Emiliano', 'Medina', 1, 56000),
('6677112237', 'Camila', 'Acosta', 3, 49000),
('1122337796', 'Facundo', 'Gutiérrez', 2, 54000),
('7799223345', 'Antonella', 'Luna', 1, 57000),
('6677002283', 'Maximilia', 'Torres', 3, 5000),
('1122337920', 'Julián', 'Díaz', 2, 55000),
('7799223341', 'Victoria', 'Muñoz', 1, 58000),
('3344556679', 'Emilse', 'Romero', 3, 51000),
('9988776608', 'Luciana', 'Sánchez', 2, 56000),
('1122003347', 'Gonzalo', 'Pérez', 1, 59000),
('8899112233', 'Celeste', 'Martínez', 3, 52000),
('3322114452', 'Matías', 'Ruiz', 2, 57000),
('1155992239', 'Julián', 'Gómez', 1, 60000),
('5566339928', 'Martina', 'Rodríguez', 3, 53000),
('2244776616', 'Catalina', 'Díaz', 2, 58000),
('9966332212', 'Bautista', 'Silva', 1, 61000),
('3311225561', 'Josefina', 'Torres', 3, 54000);

select * from Profesor

insert into Curso (cod_curs,nom_curs,horas_cur,valor_cur) values
(1001, 'Matemáticas', 40, 150),
(1002, 'Física', 35, 140),
(1003, 'Literatura', 30, 130),
(1004, 'Historia', 45, 160),
(1005, 'Química', 40, 150),
(1006, 'Biología', 50,  180),
(1007, 'Programación', 60, 200),
(1008, 'Arte', 25, 120),
(1009, 'Música', 30, 130),
(1010, 'Idiomas', 40, 150),
(1011, 'Economía', 35, 140),
(1012, 'Geografía', 45, 160),
(1013, 'Psicología', 50, 180),
(1014, 'Filosofía', 30, 130),
(1015, 'Ciencias Sociales', 40, 150),
(1016, 'Educación Física', 25 , 120),
(1017, 'Tecnología', 60, 200),
(1018, 'Sociología' , 35, 140),
(1019, 'Estadística', 40, 150),
(1020, 'Salud Pública', 50, 180),
(1021, 'Derecho', 45, 160),
(1022, 'Ecología', 30, 130),
(1023, 'Arquitectura', 60, 200),
(1024, 'Comunicación', 35, 140),
(1025, 'Astronomía', 45, 160),
(1026, 'Ingeniería', 50, 180),
(1027, 'Moda', 30, 130),
(1028, 'Nutrición', 40, 150),
(1029, 'Patrimonio Cultural', 55, 190),
(1030, 'Política', 35, 140),
(1031, 'Agricultura', 45, 160),
(1032, 'Psiquiatría', 50, 180),
(1033, 'Teatro', 30, 130),
(1034, 'Robótica', 40, 150),
(1035, 'Astrología', 60, 200),
(1036, 'Marketing' , 35, 140),
(103, 'Arqueología', 45, 160),
(1038, 'Ciencia Política', 50, 180),
(1039, 'Relaciones Internacionales', 30, 130),
(1040, 'Derechos Humanos', 40, 150),
(1041, 'Investigación Científica', 55, 190),
(1042, 'Paleontología', 35, 140 ),
(1043, 'Periodismo', 45, 160),
(1044, 'Informática', 50, 180),
(1045, 'Pintura', 30, 130),
(1046, 'Fotografía', 40, 150),
(1047, 'Gastronomía', 60, 200),
(1048, 'Medicina' , 35, 140),
(1049, 'Arquitectura Sostenible', 45, 160 ),
(1050, 'Ciencias del Mar', 50, 180);

select * from Curso

insert into Estudiante (doc_est,nom_est,ape_est,edad_est) values
(123456789, 'Juan', 'Pérez', 20),
(987654321, 'María', 'López', 22),
(567890123, 'Carlos', 'Martínez', 21),
(234567890, 'Laura', 'García', 19),
(345678901, 'Pedro', 'Rodríguez', 20),
(456789012, 'Ana', 'Fernández', 23),
(789012345, 'José', 'Gómez', 22),
(890123456, 'Marta', 'Díaz', 21),
(901234567, 'David', 'Sánchez', 20),
(678901234, 'Lucia', 'Jiménez', 19),
(112233445, 'Alejandro', 'Torres', 23),
(556677889, 'Isabel', 'Ruiz', 21),
(998877665, 'Antonio', 'Vargas', 20),
(443322110, 'Sofia', 'Moreno', 22),
(224466880, 'Marcos', 'Castro', 19),
(552211449, 'Elena', 'Navarro', 23),
(775599331, 'Rubén', 'Ortega', 21),
(123487650, 'Clara', 'Delgado', 20),
(998877660, 'Lucas', 'Mendoza', 22),
(554433221, 'Paula', 'Ríos', 19),
(223344556, 'Mateo', 'Silva', 23),
(112233445, 'Valeria', 'Molina', 21),
(778899001, 'Federico', 'Rojas', 20),
(991122334, 'Andrea', 'Herrera', 22),
(667788990, 'Daniel', 'Peralta', 19),
(667700055, 'Natalia', 'González', 23),
(112200334, 'Esteban ', 'Ibarra', 21),
(889911223, 'Julieta', 'Alvarez', 20),
(332211445, 'Hugo', 'Torres', 22),
(115599223, 'Lourdes', 'Sosa', 19),
(556633992, 'Santiago', 'Blanco', 23),
(224477661, 'Adriana', 'Romero', 21),
(996633221, 'Renata', 'Flores', 20),
(331122556, 'Emiliano', 'Medina', 22),
(667711223, 'Camila', 'Acosta', 19),
(112233779, 'Facundo', 'Gutiérrez ', 23),
(779922334, 'Antonella', 'Luna', 21),
(667700228, 'Maximilian','Torres', 20),
(112233779, 'Julián', 'Díaz', 22),
(779922334, 'Victoria', 'Muñoz', 19),
(334455667, 'Emilse', 'Romero', 23),
(998877660, 'Luciana', 'Sánchez', 21),
(112200334, 'Gonzalo', 'Pérez ', 20),
(889911223, 'Celeste', 'Martínez  ', 22),
(332211445, 'Matías', 'Ruiz', 19),
(115599223, 'Julián', 'Gómez', 23),
(556633992, 'Martina', 'Rodríguez ', 21),
(224477661, 'Catalina', 'Díaz', 20),
(996633221, 'Bautista', 'Silva', 22),
(331122556, 'Josefina', 'Torres', 19);

select * from Estudiante

insert into Estudiantexcurso (cod_cur_estcur,doc_est_estcur,fec_ini_estcur) values

(1001, 123456789, '2023-03-10'),
(1002, 987654321, '2023-04-15'),
(1003, 567890123, '2023-05-20'),
(1004, 234567890, '2023-06-25'),
(1005, 345678901, '2023-07-30'),
(1006, 456789012, '2023-08-05'),
(1007, 789012345, '2023-09-10'),
(1008, 890123456, '2023-10-15'),
(1009, 901234567, '2023-11-20'),
(1010, 678901234, '2023-12-25'),
(1011, 112233445, '2024-01-01'),
(1012, 556677889, '2024-02-05'),
(1013, 998877665, '2024-03-10'),
(1014, 443322110, '2024-04-15'),
(1015, 224466880, '2024-05-20'),
(1016, 552211449, '2024-06-25'),
(1017, 775599331, '2024-07-30'),
(1018, 123487650, '2024-08-05'),
(1019, 998877660, '2024-09-10'),
(1020, 554433221, '2024-10-15'),
(1021, 223344556, '2024-11-20'),
(1022, 112233445, '2024-12-25'),
(1023, 778899001, '2025-01-01'),
(1024, 991122334, '2025-02-05'),
(1025, 667788990, '2025-03-10'),
(1026, 667700055, '2025-04-15'),
(1027, 112200334, '2025-05-20'),
(1028, 889911223, '2025-06-25'),
(1029, 332211445, '2025-07-30'),
(1030, 115599223, '2025-08-05'),
(1031, 556633992, '2025-09-10'),
(1032, 224477661, '2025-10-15'),
(1033, 996633221, '2025-11-20'),
(1034, 331122556, '2025-12-25'),
(1035, 667711223, '2026-01-01'),
(1036, 112233779, '2026-02-05'),
(1037, 779922334, '2026-03-10'),
(1038, 667700228, '2026-04-15'),
(1039, 112233779, '2026-05-20'),
(1040, 779922334, '2026-06-25'),
(1041, 334455667, '2026-07-30'),
(1042, 998877660, '2026-08-05'),
(1043, 112200334, '2026-09-10'),
(1044, 889911223, '2026-10-15'),
(1045, 332211445, '2026-11-20'),
(1046, 115599223, '2026-12-25'),
(1047, 556633992, '2027-01-01'),
(1048, 224477661, '2027-02-05'),
(1049, 996633221, '2027-03-10'),
(1050, 331122556, '2027-04-15');

select * from Estudiantexcurso

insert into Cliente (id_cliente,nom_cli,ape_clie,dir_cliente,dep_cli,mes_cum_cli) values
(50801, 'Juan', 'Pérez', 'Calle 123, Ciudad A', 'Ventas', 'Enero'),
(10902, 'María'  , 'López', 'Av. Principal, Ciudad B', 'Marketing' , 'Febrero'),
(10103, 'Carlos' , 'Martínez', 'Calle 456, Ciudad C' , 'RRHH', 'Marzo'  ),
(01034, 'Laura', 'García', 'Av. Central, Ciudad D', 'TI', 'Abril'),
(21005, 'Pedro', 'Rodríguez', 'Calle 789, Ciudad E' , 'Ventas' , 'Mayo'),
(13006, 'Ana', 'Fernández', 'Av. Norte, Ciudad F' , 'Marketing' , 'Junio'),
(81007, 'José', 'Gómez', 'Calle 012, Ciudad G' , 'RRHH', 'Julio'),
(13008, 'Marta', 'Díaz' , 'Av. Sur, Ciudad H', 'TI', 'Agosto'),
(76009, 'David', 'Sánchez', 'Calle 345, Ciudad I' , 'Ventas' , 'Septiembre'),
(20659, 'Lucia', 'Jiménez', 'Av. Este, Ciudad J', 'Marketing' , 'Octubre'),
(10591, 'Alejandro', 'Torres'  , 'Calle 678, Ciudad K' , 'RRHH', 'Noviembre' ),
(91012, 'Isabel', 'Ruiz' , 'Av. Oeste, Ciudad L' , 'TI', 'Diciembre' ),
(01213, 'Antonio', 'Vargas', 'Calle 901, Ciudad M' , 'Ventas' , 'Enero'  ),
(16494, 'Sofia', 'Moreno', 'Av. Principal', 'Ciudad N, Marketing' , 'Febrero'),
(21315, 'Marcos', 'Castro', 'Calle 234, Ciudad O' , 'RRHH', 'Marzo'),
(10316, 'Elena' , 'Navarro' , 'Av. Central, Ciudad P' , 'TI', 'Abril'),
(05232, 'Rubén' , 'Ortega', 'Calle 567, Ciudad Q' , 'Ventas', 'Mayo'),
(31918, 'Clara' , 'Delgado', 'Av. Norte, Ciudad R' , 'Marketing' , 'Junio'),
(61519, 'Lucas', 'Mendoza', 'Calle 890, Ciudad S' , 'RRHH', 'Julio'),
(08320, 'Paula', 'Ríos', 'Av. Sur, Ciudad T', 'TI', 'Agosto' ),
(15321, 'Mateo', 'Silva', 'Calle 123, Ciudad U' , 'Ventas', 'Septiembre'),
(14942, 'Valeria', 'Molina', 'Av. Este, Ciudad V', 'Marketing' , 'Octubre'),
(11923, 'Federico', 'Rojas', 'Calle 456, Ciudad W', 'RRHH', 'Noviembre'),
(12624, 'Andrea', 'Herrera' , 'Av. Oeste, Ciudad X' , 'TI', 'Diciembre'),
(56025, 'Daniel', 'Peralta' , 'Calle 789, Ciudad Y' , 'Ventas' , 'Enero'),
(26190, 'Natalia', 'González', 'Av. Principal, Ciudad Z' , 'Marketing', 'Febrero'),
(11327, 'Esteban', 'Ibarra', 'Calle 012, Ciudad AA', 'RRHH', 'Marzo'),
(17028, 'Julieta', 'Alvarez' , 'Av. Norte, Ciudad BB', 'TI', 'Abril'),
(91029, 'Hugo', 'Torres', 'Calle 345, Ciudad CC', 'Ventas' , 'Mayo'),
(13530, 'Lourdes', 'Sosa' , 'Av. Central, Ciudad DD' , 'Marketing' , 'Junio'),
(01591, 'Santiago', 'Blanco', 'Calle 678, Ciudad EE', 'RRHH', 'Julio'),
(10762, 'Adriana', 'Romero'  , 'Av. Este, Ciudad FF' , 'TI', 'Agosto' ),
(41033, 'Renata' , 'Flores'  , 'Calle 901, Ciudad GG', 'Ventas' , 'Septiembre'),
(16334, 'Emiliano', 'Medina'  , 'Av. Oeste, Ciudad HH', 'Marketing' , 'Octubre'),
(07235, 'Camila' , 'Acosta', 'Calle 234, Ciudad II', 'RRHH', 'Noviembre'),
(10893, 'Facundo', 'Gutiérrez', 'Av. Sur, Ciudad JJ', 'TI', 'Diciembre'),
(14837, 'Antonella' , 'Luna' , 'Calle 567, Ciudad KK', 'Ventas' , 'Enero'),
(80316, 'Maximiliano', 'Torres' , 'Av. Norte, Ciudad LL', 'Marketing', 'Febrero'),
(39710, 'Julián', 'Díaz', 'Calle 890, Ciudad MM', 'RRHH', 'Marzo'),
(56340, 'Victoria', 'Muñoz', 'Av. Central, Ciudad NN' , 'TI', 'Abril'),
(38041, 'Emilse', 'Romero', 'Calle 123, Ciudad OO', 'Ventas' , 'Mayo'),
(09412, 'Luciana', 'Sánchez', 'Av. Principal, Ciudad PP', 'Marketing', 'Junio'),
(43103, 'Gonzalo', 'Pérez', 'Calle 456, Ciudad QQ', 'RRHH', 'Julio'),
(41084, 'Celeste', 'Martínez', 'Av. Norte, Ciudad RR', 'TI', 'Agosto' ),
(10457, 'Matías' , 'Ruiz', 'Calle 789, Ciudad SS', 'Ventas' , 'Septiembre'),
(10466, 'Julián', 'Gómez', 'Av. Principal, Ciudad TT', 'Marketing', 'Octubre'),
(28383, 'Martina', 'Rodríguez', 'Calle 012, Ciudad UU', 'RRHH', 'Noviembre' ),
(91048, 'Catalina', 'Díaz', 'Av. Sur, Ciudad VV', 'TI', 'Diciembre' ),
(75013, 'Bautista', 'Silva', 'Calle 345, Ciudad WW', 'Ventas', 'Enero'),
(81050, 'Josefina', 'Torres', 'Av. Este, Ciudad XX' , 'Marketing', 'Febrero');

select * from Cliente

insert into Articulo (id_art,tit_art,aut_art,edi_art,prec_art) values
(102501, 'El camino hacia el futuro', 'Juan Pérez', 'Editorial A', 25.00 ),
(501002, 'Explorando el espacio', 'María Gómez', 'Editorial B', 20.50 ),
(130003, 'El arte de programar' , 'Carlos Martínez', 'Editorial C', 30.00 ),
(751004, 'El misterio del océano', 'Laura Hernández', 'Editorial D', 22.75 ),
(100185, 'Aprendiendo a cocinar', 'Pedro Rodríguez', 'Editorial E', 18.99 ),
(301006, 'Viaje al pasado', 'Ana Fernández', 'Editorial F', 27.30 ),
(108507, 'La mente humana', 'José García', 'Editorial G', 24.85 ),
(121008, 'Los secretos del bosque', 'Marta Díaz', 'Editorial H', 21.20 ),
(102909, 'El camino de la creatividad', 'David Sánchez', 'Editorial I', 29.75 ),
(401010, 'El poder del saber', 'Lucia Jiménez', 'Editorial J', 26.40 ),
(601011, 'Construyendo un legado', 'Alejandro Torres ', 'Editorial K', 23.60 ),
(103112, 'El universo interior', 'Isabel Ruiz', 'Editorial L', 31.00 ),
(101803, 'La vida en equilibrio', 'Antonio Vargas', 'Editorial M', 25.80 ),
(010014, 'El lenguaje del arte' , 'Sofia Moreno', 'Editorial N', 20.10 ),
(109015, 'Conociendo la naturaleza', 'Marcos Castro', 'Editorial O', 27.90 ),
(231016, 'Innovación tecnológica', 'Elena Navarro', 'Editorial P', 23.40 ),
(751017, 'El mundo del vino', 'Rubén Ortega', 'Editorial Q', 26.75 ),
(101822, 'El arte de la fotografía', 'Clara Delgado', 'Editorial R', 22.30 ),
(106019, 'El reino animal', 'Lucas Mendoza', 'Editorial S', 28.60 ),
(102240, 'Desarrollo sostenible', 'Paula Ríos', 'Editorial T', 24.20 ),
(801021, 'El poder del deporte', 'Mateo Silva', 'Editorial U', 30.80 ),
(102402, 'La mente analítica', 'Valeria Molina', 'Editorial V', 25.40 ),
(102123, 'El viaje del emprendedor', 'Federico Rojas', 'Editorial W', 21.70 ),
(291024, 'La música del mundo', 'Andrea Herrera', 'Editorial X', 29.20 ),
(102590, 'Los colores del arte' ,  'Daniel Peralta', 'Editorial Y', 26.90 ),
(150026, 'Las maravillas naturales', 'Natalia González ', 'Editorial Z', 22.50 ),
(301027, 'Descubriendo el pasado',  'Esteban Ibarra', 'Editorial AA', 28.30),
(102248, 'La era de la tecnología', 'Julieta Alvarez', 'Editorial BB', 24.60),
(102950, 'La mente del futuro'  ,  'Hugo Torres', 'Editorial CC', 30.50),
(109030, 'El camino hacia el éxito', 'Lourdes Sosa', 'Editorial DD', 25.70),
(251031, 'El viaje del conocimiento', 'Santiago Blanco', 'Editorial EE', 21.90),
(601032, 'La aventura del saber', 'Adriana Romero', 'Editorial FF', 29.60),
(271033, 'Descubriendo la creatividad', 'Renata Flores', 'Editorial GG', 27.10),
(801034, 'El arte de la innovación', 'Emiliano Medina', 'Editorial HH', 23.80),
(231035, 'El poder de la mente' , 'Camila Acosta', 'Editorial II', 31.20),
(551036, 'La vida y la ciencia' , 'Facundo Gutiérrez ', 'Editorial JJ', 26.20),
(120037, 'La belleza de la naturaleza', 'Antonella Luna  ', 'Editorial KK', 22.80),
(800038, 'El viaje del aprendizaje', 'Maximiliano Torres', 'Editorial LL', 28.90),
(102639, 'El mundo de la imaginación', 'Julián Díaz', 'Editorial MM', 25.50),
(199840, 'El arte de la arquitectura', 'Victoria Muñoz', 'Editorial NN', 21.40),
(120011, 'La magia de la literatura', 'Emilse Romero', 'Editorial OO', 29.00),
(104242, 'La creatividad en el arte', 'Luciana Sánchez', 'Editorial PP', 27.30),
(920143, 'El legado de la historia', 'Gonzalo Pérez', 'Editorial QQ', 23.70),
(157104, 'El mundo de las ideas', 'Celeste Martínez', 'Editorial RR', 30.10),
(801045, 'El camino del conocimiento', 'Matías Ruiz', 'Editorial SS', 25.80),
(102546, 'La esencia del saber' , 'Julián Gómez', 'Editorial TT', 22.40),
(104407, 'Explorando nuevos mundos', 'Martina Rodríguez ', 'Editorial UU', 28.20),
(014048, 'El viaje de la imaginación', 'Catalina Díaz', 'Editorial VV', 24.70),
(291049, 'La magia de la historia', 'Bautista Silva', 'Editorial WW', 29.50),
(120000, 'La ruta del aprendiz' , 'Josefina Torres', 'Editorial XX', 26.00);

select * from Articulo

set dateformat dmy
insert into Pedido (id_ped,id_cli_ped,fec_ped,val_ped) values
( 541001, 50801, '2023-03-10', 150.50),
( 671002, 10902, '2023-04-15', 210.20),
( 491003, 10103, '2023-05-20', 180.75),
( 121004, 01034, '2023-06-25', 300.00),
( 751005, 21005, '2023-07-31', 125.80),
( 081006, 13006, '2023-08-05', 420.30),
( 451007, 81007, '2023-09-10', 330.60),
( 431008, 13008, '2023-10-15', 275.40),
( 581009, 76009, '2023-11-25', 195.00),
( 931010, 20659, '2023-12-25', 150.25),
( 461011, 10591, '2024-01-01', 210.75),
( 671012, 91012, '2024-02-05', 180.00),
( 981013, 01213, '2024-03-10', 290.90),
( 891014, 16494, '2024-04-15', 240.30),
( 571015, 21315, '2024-05-20', 175.50),
( 351016, 10316, '2024-06-05', 350.75),
( 102317, 05232, '2024-07-03', 135.60),
( 631018, 31918, '2024-08-05', 410.20),
( 101799, 61519, '2024-09-10', 290.00),
( 102760, 08320, '2024-10-15', 180.25),
( 134021, 15321, '2024-11-20', 250.75),
( 201022, 14942, '2024-12-25', 280.00),
( 051023, 11923, '2025-01-01', 380.90),
( 561024, 12624, '2025-02-05', 420.30),
( 091025, 56025, '2025-03-10', 195.00),
( 671026, 26190, '2025-04-15', 330.75),
( 102753, 11327, '2025-05-20', 275.60),
( 105628, 17028, '2025-06-25', 225.40),
( 102689, 91029, '2025-07-30', 150.25),
( 541030, 13530, '2025-08-05', 210.75),
( 167801, 01591, '2025-09-10', 240.00),
( 150382, 10762, '2025-10-15', 300.90),
( 107853, 41033, '2025-11-20', 265.30),
( 461034, 16334, '2025-12-25', 380.50),
( 561035, 07235, '2026-01-01', 430.75),
( 741036, 10893, '2026-02-05', 175.60),
( 861037, 14837, '2026-03-10', 310.20),
( 681038, 80316, '2026-04-5', 290.00),
( 981039, 39710, '2026-05-20', 200.25),
( 104750, 56340, '2026-06-02', 280.75),
( 261041, 38041, '2026-07-03', 360.00),
( 431042, 09412, '2026-08-05', 240.90),
( 541043, 43103, '2026-09-10', 410.30),
( 971044, 41084, '2026-10-01', 225.50),
( 107245, 10457, '2026-11-20', 310.75),
( 721046, 10466, '2026-12-25', 375.60),
( 072147, 28383, '2027-01-01', 200.20),
( 341048, 91048, '2027-02-05', 325.00),
( 156049, 75013, '2027-03-10', 275.30),
( 631050, 81050, '2027-04-15', 195.75);

select * from Pedido

insert into Articuloxpedido (id_ped_artped,id_art_artped,can_art_artped,val_ven_art_artped) values
(541001, 102501,  3,  50.00 ),
(671002, 501002,  2, 310.00 ),
(491003, 130003,  1,  25.00 ),
(121004,  751004, 4,  80.00 ),
(751005, 100185,  2,  40.00 ),
(081006, 301006,  3,  75.00 ),
(451007, 108507,  1, 260.00 ),
(431008,  121008, 5,  100.00),
(581009,  102909, 2, 310.00 ),
(931010, 401010,  3,  45.00 ),
(461011, 601011,  4,  60.00 ),
(671012,  103112, 1,  15.00 ),
(981013,  101803, 2,  35.00 ),
(891014, 010014,  3,  45.00 ),
(571015, 109015,  2, 310.00 ),
(351016,  231016, 4,  80.00 ),
(102317, 751017,  1,  25.00 ),
(631018,  101822, 3,  60.00 ),
(101799,  106019, 2,  40.00 ),
(102760,  102240, 1, 260.00 ),
(134021,  801021, 4,  60.00 ),
(201022, 102402, 2, 310.00 ),
(051023,  102123, 3,  45.00 ),
(561024, 291024, 1,  25.00 ),
(091025, 102590, 5,  100.00),
(671026, 150026, 3,  45.00 ),
(102753, 301027, 2, 310.00 ),
(105628, 102248, 1, 260.00 ),
(102689, 102950, 4,  80.00 ),
(5410310, 109030, 2,  40.00 ),
(167801, 251031, 3,  60.00 ),
(150382, 601032, 1,  15.00 ),
(107853, 271033, 2, 310.00 ),
(461034, 801034, 5,  75.00 ),
(561035, 231035, 1,  25.00 ),
(741036, 551036, 4,  80.00 ),
(861037, 120037, 3,  45.00 ),
(681038, 800038, 2, 310.00 ),
(981039, 102639, 1, 620.00 ),
(104750, 199840, 2,  40.00 ),
(261041, 120011, 3,  45.00 ),
(431042, 104242, 1,  25.00 ),
(541043, 920143, 4,  80.00 ),
(971044, 157104, 2, 310.00 ),
(107245, 801045, 3,  60.00 ),
(721046, 102546, 1, 260.00 ),
(072147, 104407, 5,  100.00),
(341048, 014048, 3,  45.00 ),
(156049, 291049, 2, 310.00 ),
(631050, 120000, 1,  25.00 );
 
select * from Articuloxpedido

insert into Compañia (comnit,comnombre,comañofun,comreplegar) values
( 1232005890, 'Compañía A ', 2005, 'Juan Pérez'),
( 9876520100, 'Compañía B ', 2010, 'María Gómez'),
( 5199800234, 'Compañía C ', 2000, 'Carlos Rodríguez '),
( 2345678901, 'Compañía D ', 1998, 'Laura Martínez'),
( 3456789012, 'Compañía E ', 2015, 'Pedro Sánchez'),
( 4567890123, 'Compañía F ', 2003, 'Ana Hernández'),
( 7890123456, 'Compañía G ', 2007, 'José López'),
( 8901234567, 'Compañía H ', 2011, 'Marta Fernández'),
( 9012345678, 'Compañía I ', 2009, 'David Díaz'),
( 6789012345, 'Compañía J ', 2004, 'Lucia Martínez'),
( 1122334455, 'Compañía K ', 2019, 'Alejandro Ruiz'),
( 5566778899, 'Compañía L ', 2013, 'Isabel Gutiérrez '),
( 9988776655, 'Compañía M ', 2006, 'Antonio Castro'),
( 4433221100, 'Compañía N ', 2002, 'Sofia Nuñez'),
( 2244668800, 'Compañía O ', 2014, 'Marcos Sosa'),
( 5522114499, 'Compañía P ', 2008, 'Elena Torres'),
( 7755993311, 'Compañía Q ', 2001, 'Rubén Herrera'),
( 1234876500, 'Compañía R ', 2016, 'Clara Gómez'),
( 9988776600, 'Compañía S ', 2007, 'Lucas Martín'),
( 5544332211, 'Compañía T ', 2012, 'Paula Jiménez'),
( 2233445566, 'Compañía U ', 2018, 'Mateo Pérez'),
( 1122334455, 'Compañía V ', 2005, 'Valeria Gómez'),
( 7788990011, 'Compañía W ', 2009, 'Federico Sánchez '),
( 9911223344, 'Compañía X ', 2003, 'Andrea Díaz'),
( 6677889900, 'Compañía Y ', 2015, 'Daniel López'),
( 6677000550, 'Compañía Z ', 2010, 'Natalia Martínez '),
( 1122003344, 'Compañía AA', 2004, 'Esteban Fernández'),
( 8899112233, 'Compañía AB', 2008, 'Julieta Rodríguez'),
( 3322114455, 'Compañía AC', 2001, 'Hugo Moreno'),
( 1155992233, 'Compañía AD', 2017, 'Lourdes Sánchez  '),
( 5566339922, 'Compañía AE', 2006, 'Santiago Gómez'),
( 2244776611, 'Compañía AF', 2012, 'Adriana Martínez '),
( 9966332210, 'Compañía AG', 2014, 'Renata López'),
( 3311225566, 'Compañía AH', 2007, 'Emiliano Rodríguez'),
( 6677112233, 'Compañía AI', 2009, 'Camila Gutiérrez '),
( 1122337799, 'Compañía AJ', 2016, 'Facundo Sosa'),
( 7799223344, 'Compañía AK', 2002, 'Antonella Díaz'),
( 6677002288, 'Compañía AL', 2015, 'Maximiliano Torres'),
( 1122337790, 'Compañía AM', 2008, 'Julián Martínez'),
( 7799223341, 'Compañía AN', 2012, 'Victoria Fernández'),
( 3344556677, 'Compañía AO', 2006, 'Emilse Gómez'),
( 9988776601, 'Compañía AP', 2014, 'Luciana Rodríguez'),
( 1122003341, 'Compañía AQ', 2007, 'Gonzalo Pérez'),
( 8899112238, 'Compañía AR', 2009, 'Celeste Gutiérrez'),
( 3322114456, 'Compañía AS', 2016, 'Matías Sánchez'),
( 1155992238, 'Compañía AT', 2010, 'Julián Martínez'),
( 5566339924, 'Compañía AU', 2004, 'Martina Rodríguez'),
( 2244776610, 'Compañía AV', 2008, 'Catalina Díaz'),
( 9966332210, 'Compañía AW', 2012, 'Bautista Gutiérrez'),
( 3311225560, 'Compañía AX', 2006, 'Josefina Pérez');

select * from Compañia

insert into TiposAutomotores (auttipo,autnombre) values

(1, 'Automóvil Sedán'),
(2, 'Camioneta SUV'),
(3, 'Camión de Carga'),
(4, 'Motocicleta'),
(5, 'Furgoneta'),
(6, 'Autobús'),
(7, 'Tractor Agrícola'),
(8, 'Remolque'),
(9, 'Van'),
(1, 'Autobús Escolar'),
(1, 'Caravana'),
(2, 'Ambulancia'),
(1, 'Coche de Policía'),
(1, 'Vehículo de Bomberos'),
(5, 'Taxi'),
(6, 'Carro de Golf'),
(1, 'Barco'),
(8, 'Yate'),
(9, 'Bicicleta'),
(2, 'Monopatín Eléctrico'),
(1, 'Avión'),
(2, 'Helicóptero'),
(3, 'Carro de Carreras'),
(2, 'Caravana de Circo'),
(2, 'Trineo'),
(6, 'Carroza de Desfile'),
(7, 'Carro de Alimentos'),
(2, 'Carro de Limpieza'),
(9, 'Carro de Jardinería'),
(3, 'Carro de Mudanza'),
(1, 'Carro de Reparto'),
(2, 'Coche Fúnebre'),
(3, 'Coche de Bodas'),
(3, 'Coche de Paseo'),
(5, 'Coche de Trabajo'),
(6, 'Autobús Turístico'),
(3, 'Carro de Basura'),
(8, 'Carro de Policía Montada'),
(3, 'Coche Patrulla'),
(4, 'Coche de Postre'),
(4, 'Coche de Picnic'),
(2, 'Coche de Golf Eléctrico'),
(3, 'Coche de Carreras Eléctrico'),
(4, 'Coche de Juguete'),
(4, 'Carro de Compras'),
(6, 'Carro de Golf para Discapacitados'),
(7, 'Coche de Paseo Eléctrico'),
(4, 'Vehículo Todo Terreno  '),
(9, 'Coche Volador'),
(5, 'Coche Submarino');

select * from TiposAutomotores

insert into Automotores (autoplaca,automarca,autotipo,automodelo,autopasajeros,autocilindraje,autonumchasis) values

('ABC123', 'Toyota', 'Sedán',  'Corolla', 5, '1600cc', '123ABC89'),
('XYZ789', 'Honda', 'SUV', 'CR-V', 5, '2000cc',  '987XYZ21'),
('DEF456', 'Ford', 'Pickup', 'F-150',  3, '3500cc',  '456DEF76'),
('GHI789', 'Volkswagen', 'Hatchback', 'Golf', 5, '1800cc', '789GHI45'),
('JKL123', 'Nissan', 'Sedán',  'Altima', 5, '2200cc',  '234JKL65'),
('MNO456', 'Chevrolet', 'Camioneta'  'Tahoe',  7, '5300cc', '345MNO56')  
('PQR789', 'Hyundai',  'SUV', 'Santa Fe',7, '2500cc', '456PQR54'),
('STU123', 'Kia',  'Hatchback',  'Rio', 5, '1600cc', '567STU34'),
('VWX456', 'BMW',   'Sedán',  '3 Series',5, '2000cc', '678VWX76'),
('YZA789', 'Mercedes-Benz' 'SUV', 'GLC', 5, '2200cc', '789YZA21'),
('BCD123', 'Subaru', 'Sedán',  'Impreza', 5, '1600cc', '890BCD65'),
('FGE546', 'Audi', 'SUV', 'Q5', 5, '2000cc', '901EFG45'),
('BYH957', 'Mazda', 'Hatchback'  'Mazda 3', 5, '1800cc', '123HIJ54'),
('AVK956', 'Jeep', 'Camioneta'  'Wrangler', 4, '3600cc', '234KLM34'),
('GNB740', 'Acura',  'Sedán',  'TLX', 5, '2000cc', '345NOP76'), 
('QRS789', 'Tesla',  'Sedán',  'Model 3', 5, 'Electric','468QRS41'),
('TUV123', 'Land Rover','SUV', 'Range Rover', 5, '3000cc', '567TUV65'),
('WXY456', 'Porsche',  'Coupe',  '911', 2, '3000cc', '613UFB25'),
('YZA086', 'Jaguar', 'Sedán',  'XE', 5, '2000cc', '789YZA54'),
('CBD213', 'Mini', 'Hatchback'  'Cooper', 4, '1500cc', '909WPB22'),
('EFG456', 'Volvo', 'SUV', 'XC60',5, '2000cc', '901EFG76'),
('HIJ789', 'Buick',  'Sedán',  'Regal',  5, '2200cc', '123HIJ45'),
('OBM956', 'Infiniti', 'Coupe',  'Q60', 4, '3000cc', '254KTW34'),
('QWB964', 'Lexus',  'Sedán',  'ES', 5, '2500cc', '345NOP65'),
('RQS879', 'Subaru','SUV', 'Outback', 5, '2500cc', '456QRS21'),
('UVT312', 'Mitsubishi','SUV', 'Outlander',  7, '3500cc', '567TUV76'),
('YWX546', 'Hyundai',  'Hatchback',  'Accent', 5, '1600cc', '678WXY45'),
('ZYV879', 'Tesla',  'Sedán',  'Model S', 5, 'Electric','701YZA74'),
('DCB321', 'Audi', 'SUV', 'Q7', 7, '3000cc', '902BOP12'),
('TBD953', 'Mercedes-Benz'  'Sedán', ' E-Class', 5, '2500cc', '901KLP84'), 
('ABU096', 'BMW',  'Coupe',  '4 Series', 4, '2000cc', '231IHJ45'),  
('IVU658', 'Jeep', 'Camioneta',  'Grand Cherokee', 5,  '3600cc', '423LMK54'),  
('PXI927', 'Ford', 'Pickup', 'Ranger', 4, '2200cc', '365NPO45'),
('RSQ786', 'Toyota','SUV', 'Highlander', 8, '3500cc', '456OBS21'),
('UTV132', 'Nissan', 'Sedán',  'Sentra', 5, '1800cc', '709UVT56'),
('WYX564', 'Subaru','Hatchback', 'Crosstrek',  5, '1600cc', '786QUY56'),
('AZY978', 'Kia',  'SUV', 'Sorento', 7, '2200cc', '897YNV54'),
('BDU135', 'Honda',  'Sedán',  'Civic',  5, '2000cc', '809ONU21'),
('BTX951', 'Volkswagen','Hatchback  Polo',5, '1600cc', '190GEF67'),
('OCM079', 'Ford', 'SUV', 'Escape', 5, '2500cc', '453HIJ21'),
('NCP802', 'Hyundai',   'Sedán',  'Elantra', 5, '2000cc',  '584MKL54') 
('NOP456', 'Chevrolet', 'Pickup', 'Silverado',  5, '5300cc', '655ONP34'),
('RQS897', 'Mazda', 'Hatchback', 'Mazda 2', 5, '1500cc', '465RQS54'), 
('VTU213', 'Audi',  'Sedán',  'A4', 5, '2000cc', '267TVU76'),
('XWY564', 'BMW',  'SUV', 'X3', 5, '2500cc', '768MXU54'), 
('NVQ136', 'Mercedes-Benz'  'Sedán',  'S-Class', 5, '3000cc', '759YZA84'),
('BDC537', 'Subaru','SUV', 'Forester',5, '2500cc', '890BCD21'),
('PCO180', 'Tesla',  'Sedán',  'Model X', 5, 'Electric','091EGF67'),
('OTH957', 'Toyota','Pickup', 'Tacoma', 4, '3500cc', '143IJH25'),
('KLM123', 'Honda', 'SUV', 'Pilot',  8, '3500cc', '234KLM54'), 

select * from Automotores

insert into Aseguramientos (asecodigo,asefechainicio,asefechaexpiracion,asevalorasegurado,aseestado,asecosto,aseplaca) values

(1 , '2023-01-15', '2024-01-14', 15000, 'Activo  ', 500, 'ABC123'),
(2 , '2023-02-20', '2024-02-19', 20000, 'Activo  ', 600, 'XYZ789'),
(3 , '2023-03-10', '2024-03-09', 18000, 'Inactivo', 550, 'DEF456'),
(4 , '2023-04-05', '2024-04-04', 25000, 'Activo  ', 700, 'GHI789'),
(5 , '2023-05-12', '2024-05-11', 30000, 'Activo  ', 800, 'JKL123'),
(6 , '2023-06-30', '2024-06-29', 22000, 'Activo  ', 650, 'MNO456'),
(7 , '2023-07-22', '2024-07-21', 27000, 'Inactivo', 750, 'PQR789'),
(8 , '2023-08-18', '2024-08-17', 19000, 'Activo  ', 550, 'STU123'),
(9 , '2023-09-01', '2024-08-31', 21000, 'Activo  ', 600, 'VWX456'),
(10, '2023-10-29', '2024-10-28', 28000, 'Inactivo', 720, 'YZA789'),
(11, '2023-11-14', '2024-11-13', 32000, 'Activo  ', 850, 'BCD123'),
(12, '2023-12-03', '2024-12-02', 26000, 'Activo  ', 700, 'EFG456'),
(13, '2024-01-02', '2025-01-01', 24000, 'Inactivo', 650, 'HIJ789'),
(14, '2024-02-18', '2025-02-17', 33000, 'Activo  ', 900, 'KLM123'),
(15, '2024-03-25', '2025-03-24', 35000, 'Activo  ', 950, 'NOP456'),
(16, '2024-04-11', '2025-04-10', 27000, 'Inactivo', 750, 'QRS789'),
(17, '2024-05-08', '2025-05-07', 30000, 'Activo  ', 800, 'TUV123'),
(18, '2024-06-17', '2025-06-16', 29000, 'Activo  ', 780, 'WXY456'),
(19, '2024-07-30', '2025-07-29', 31000, 'Inactivo', 820, 'YZA789'),
(20, '2024-08-29', '2025-08-28', 32000, 'Activo  ', 850, 'BCD123'),
(21, '2024-09-05', '2025-09-04', 33000, 'Activo  ', 900, 'EFG456'),
(22, '2024-10-14', '2025-10-13', 34000, 'Inactivo', 920, 'HIJ789'),
(23, '2024-11-23', '2025-11-22', 35000, 'Activo  ', 950, 'KLM123'),
(24, '2024-12-20', '2025-12-19', 36000, 'Activo  ', 100, 'NOP456'),
(25, '2025-01-30', '2026-01-29', 37000, 'Inactivo', 105, 'QRS789'),
(26, '2025-02-28', '2026-02-27', 38000, 'Activo  ', 110, 'TUV123'),
(27, '2025-03-12', '2026-03-11', 39000, 'Activo  ', 115, 'WXY456'),
(28, '2025-04-19', '2026-04-18', 40000, 'Inactivo', 120, 'YZA789'),
(29, '2025-05-25', '2026-05-24', 41000, 'Activo  ', 125, 'BCD123'),
(30, '2025-06-27', '2026-06-26', 42000, 'Activo  ', 130, 'EFG456'),
(31, '2025-07-30', '2026-07-29', 43000, 'Inactivo', 135, 'HIJ789'),
(32, '2025-08-29', '2026-08-28', 44000, 'Activo  ', 140, 'KLM123'),
(33, '2025-09-30', '2026-09-29', 45000, 'Activo  ', 145, 'NOP456'),
(34, '2025-10-20', '2026-10-19', 46000, 'Inactivo', 150, 'QRS789'),
(35, '2025-11-15', '2026-11-14', 47000, 'Activo  ', 155, 'TUV123'),
(36, '2025-12-18', '2026-12-17', 48000, 'Activo  ', 160, 'WXY456'),
(37, '2026-01-10', '2027-01-09', 49000, 'Inactivo', 165, 'YZA789'),
(38, '2026-02-09', '2027-02-08', 50000, 'Activo  ', 170, 'BCD123'),
(39, '2026-03-05', '2027-03-04', 51000, 'Activo  ', 175, 'EFG456'),
(40, '2026-04-03', '2027-04-02', 52000, 'Inactivo', 180, 'HIJ789'),
(41, '2026-05-01', '2027-04-30', 53000, 'Activo  ', 185, 'KLM123'),
(42, '2026-06-08', '2027-06-07', 54000, 'Activo  ', 190, 'NOP456'),
(43, '2026-07-15', '2027-07-14', 55000, 'Inactivo', 195, 'QRS789'),
(44, '2026-08-18', '2027-08-17', 56000, 'Activo  ', 200, 'TUV123'),
(45, '2026-09-22', '2027-09-21', 57000, 'Activo  ', 205, 'WXY456'),
(46, '2026-10-25', '2027-10-24', 58000, 'Inactivo', 210, 'YZA789'),
(47, '2026-11-30', '2027-11-29', 59000, 'Activo  ', 215, 'BCD123'),
(48, '2026-12-19', '2027-12-18', 60000, 'Activo  ', 220, 'EFG456'),
(49, '2027-01-14', '2028-01-13', 61000, 'Inactivo', 225, 'HIJ789'),
(50, '2027-02-18', '2028-02-17', 62000, 'Activo  ', 230, 'KLM123');

select * from Aseguramientos

insert into Incidentes (incicodigo,incifecha,inciplaca,incilugar,inciantheridos,incicanfatalidades,incicanautosinvolucrados) values

  (1,  '2023-01-03', 'ABC123', 'Calle Principal', 2, 0, 2),
 (2,  '2023-01-05', 'XYZ789', 'Avenida Central', 1, 1, 2),
 (3,  '2023-01-07', 'DEF456', 'Calle Robles', 3, 1, 3),
 (4,  '2023-01-10', 'GHI789', 'Paseo del Sol', 0, 0, 1),
 (5,  '2023-01-12', 'JKL123', 'Avenida Libertad', 2, 1, 2),
 (6,  '2023-01-15', 'MNO456', 'Calle de las Flores', 1, 0, 1),
 (7,  '2023-01-18', 'PQR789', 'Boulevard Central', 5, 2, 4),
 (8,  '2023-01-20', 'STU123', 'Avenida Primavera', 0, 0, 1),
 (9,  '2023-01-22', 'VWX456', 'Calle de los Pinos', 4, 1, 3),
 (10, '2023-01-25', 'YZA789', 'Carrera 12', 3, 0, 2),
 (11, '2023-01-28', 'BCD123', 'Avenida Colinas', 1, 0, 1),
 (12, '2023-01-30', 'EFG456', 'Calle del Parque', 2, 1, 2),
 (13, '2023-02-02', 'HIJ789', 'Avenida del Río', 2, 1, 3),
 (14, '2023-02-05', 'KLM123', 'Calle de la Luna', 1, 0, 1),
 (15, '2023-02-07', 'NOP456', 'Carretera Principal', 6,  2, 5 ),
 (16, '2023-02-10', 'QRS789', 'Avenida del Bosque' 3,  1, 2 ),
 (17, '2023-02-13', 'TUV123', 'Boulevard Norte', 1,  0,  1 ),
 (18, '2023-02-15', 'WXY456', 'Calle de los Girasoles', 2,  0, 2 ),
 (19, '2023-02-18', 'YZA789', 'Paseo de la Montaña', 4,  1, 3 ),
 (20, '2023-02-21', 'BCD123', 'Avenida del Sol', 0,  0, 1 ),
 (21, '2023-02-24', 'EFG456', 'Calle de las Rosas' 2,  0, 2 ),
 (22, '2023-02-26', 'HIJ789', 'Avenida del Parque' 3,  1, 3 ),
 (23, '2023-03-01', 'KLM123', 'Calle de los Almendros' 1,  0, 1 ),
 (24, '2023-03-03', 'NOP456', 'Paseo del Bosque' 2,  0, 2 ),
 (25, '2023-03-06', 'QRS789', 'Avenida del Lago' 3,  1, 3 ),
 (26, '2023-03-09', 'TUV123', 'Calle del Río', 0,  0, 1 ),
 (27, '2023-03-12', 'WXY456', 'Boulevard del Este', 2,  0, 2 ),
 (28, '2023-03-15', 'YZA789', 'Avenida Central Este', 4,  1, 3 ),
 (29, '2023-03-18', 'BCD123', 'Calle de los Cedros', 1,  0, 1 ),
 (30, '2023-03-20', 'EFG456', 'Paseo de las Flores', 3,  1, 2 ),
 (31, '2023-03-23', 'HIJ789', 'Boulevard del Oeste', 2,  0, 2 ),
 (32, '2023-03-26', 'KLM123', 'Avenida del Sur', 1,  0, 1 ),
 (33, '2023-03-29', 'NOP456', 'Calle de los Pinos', 5,  2, 4 ),
 (34, '2023-04-01', 'QRS789', 'Carrera 10', 2,  0, 2 ),
 (35, '2023-04-04', 'TUV123', 'Paseo del Este', 1,  0, 1 ),
 (36, '2023-04-07', 'WXY456', 'Avenida de la Montaña', 3,  1, 3 ),
 (37, '2023-04-10', 'YZA789', 'Calle de los Almendros', 1,  0, 1 ),
 (38, '2023-04-13', 'BCD123', 'Avenida de la Luna', 2,  0, 2 ),
 (39, '2023-04-16', 'EFG456', 'Calle de las Rosas', 4,  1, 3 ),
 (40, '2023-04-19', 'HIJ789', 'Boulevard del Bosque', 0,  0, 1 ),
 (41, '2023-04-22', 'KLM123', 'Paseo del Río', 2,  0, 2 ),
 (42, '2023-04-25', 'NOP456', 'Avenida de los Girasoles', 3,  1, 3 ),
 (43, '2023-04-28', 'QRS789', 'Calle del Parque', 1  0, 1 ),
 (44, '2023-05-01', 'TUV123', 'Avenida de las Rosas', 2,  0, 2 ),
 (45, '2023-05-04', 'WXY456', 'Boulevard de la Montaña', 5,  2, 4 ),
 (46, '2023-05-07', 'YZA789', 'Calle del Bosque', 1,  0, 1 ),
 (47, '2023-05-10', 'BCD123', 'Avenida de la Montaña',, 2  0, 2 ),
 (48, '2023-05-13', 'EFG456', 'Paseo del Bosque', 3,  1, 3 ),
 (49, '2023-05-16', 'HIJ789', 'Avenida de las Flores', 1,  0, 1 ),
 (50, '2023-05-19', 'KLM123', 'Boulevard de los Cedros', 4,  1, 3 );

select * from Incidentes

--c. Crear 5 procedimientos almacenados para las siguientes consultas:

--i. Visualizar los clientes que cumplen años segun un mes ingresado por
--parametros.
DELIMITER //

CREATE PROCEDURE VerClientesCumpleaniosPorMes(IN mes_param INT)
BEGIN
    SELECT *
    FROM Clientes
    WHERE MONTH(fecha_nacimiento) = mes_param;
END //

DELIMITER ;

--ii. Visualizar el nombre del cliente, la fecha y el valor segun id del cliente ingresado.
DELIMITER //

CREATE PROCEDURE VerInfoClientePorID(IN id_cliente INT)
BEGIN
    SELECT nombre, fecha, valor
    FROM Clientes
    WHERE cliente_id = id_cliente;
END //

DELIMITER ;

--iii. Visualizar los datos de las empresas fundadas segun año ingresado.
DELIMITER //

CREATE PROCEDURE VerEmpresasFundadasPorAnio(IN anio_param INT)
BEGIN
    SELECT *
    FROM Empresas
    WHERE YEAR(fecha_fundacion) = anio_param;
END //

DELIMITER ;


--iv. Visualizar los datos de la empresa segun nit ingresado.
DELIMITER //

CREATE PROCEDURE VerInfoEmpresaPorNIT(IN nit_param VARCHAR(20))
BEGIN
    SELECT *
    FROM Empresas
    WHERE nit = nit_param;
END //

DELIMITER ;


--v. Visualizar los pedidos que se han realizado segun id de articulo ingresado, el
--listado debe mostrar el nombre y direccion del cliente, el respectivo numero de
--pedido y la cantidad solicitada.
DELIMITER //

CREATE PROCEDURE VerPedidosPorIDArticulo(IN id_articulo INT)
BEGIN
    SELECT c.nombre AS nombre_cliente, c.direccion AS direccion_cliente, p.numero_pedido, dp.cantidad_solicitada
    FROM Clientes c
    JOIN Pedidos p ON c.cliente_id = p.cliente_id
    JOIN Detalle_Pedido dp ON p.numero_pedido = dp.numero_pedido
    WHERE dp.articulo_id = id_articulo;
END //

DELIMITER ;
