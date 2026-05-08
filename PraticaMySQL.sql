create schema playground;
use playground;

create table Categori(
id_categoria int not null,
nombre varchar(100) null,
primary key (id_categoria)

);

create table Usuario(
id_usuario int not null,
nombre varchar(100) null,
apellido varchar(100) null,
email varchar(200) null,
categoria int null,
primary key (id_usuario)
);

alter table usuario
add constraint fk
foreign key (categoria)
references categoria(id_categoria);

create table carrera(
id_carrera int not null,
titulo varchar(50) null,
descripcion text null,
primary key (id_carrera)
);

create table usuario_carrera(
id int not null,
id_usuario int,
id_carrera int,
fecha_inscripcion timestamp,
foreign key (id_usuario) references usuario(id_usuario),
foreign key (id_carrera) references carrera(id_carrera)
);

INSERT INTO `playground`.`categoria`
(`id_categoria`,
`nombre`)
VALUES
(1,
"Estudiante");

INSERT INTO `playground`.`usuario`
(`id_usuario`,
`nombre`,
`apellido`,
`email`,
`categoria`)
VALUES
(1001,
"Juan",
"Perez",
"jperez@gmail.com",
1);



















