create schema restaurantes;
use restaurantes;

create table restaurante(
restaurante_id int not null,
nombre varchar(50) null,
foto varchar(100) null,
direccion varchar(100) null,
horario_atencion varchar(25) null,
calificacion int null,
primary key (restaurante_id)
);

create table plato(
plato_id int not null,
nombre varchar(50) null,
descripcion varchar(100),
foto varchar(100) null,
precio decimal(10,2) null,
restaurante_id int not null,
categoria_id int not null,
primary key (plato_id)

);

create table ingrediente(
ingrediente_id int not null,
nombre varchar(50) null,
descripcion varchar(100) null,
plato_id int not null,
primary key(ingrediente_id)
);

create table categoria(
categoria_id int not null,
nombre varchar(50) null,
descripcion varchar(100) null,
primary key (categoria_id)
);

create table pedido(
pedido_id int not null,
fecha_hora_pedido datetime null,
cantidad int null,
precio decimal(10,2),
total decimal(14,2) null,
aclaraciones varchar(100) null,
direccion_entrega varchar(100) null,
fecha_hora_envio datetime null,
usuario_id int not null,
plato_id int not null,
primary key (pedido_id)
);

create table usuario(
usuario_id int not null,
nombre varchar(50) null,
telefono varchar(25) null,
direccion varchar(200) null,
puerta varchar(2) null,
piso varchar(2) null,
departamento varchar(2) null,
acalaraciones varchar(100) null,
email varchar(50) not null,
contrasena varchar(50) not null,
fecha_contrasena date not null,
estado_baja bool not null,
fecha_baja date null,
primary key (usuario_id)
);

create table tipo_usuario(
tipo_usuario_id int not null,
nombre varchar(10),
primary key (tipo_usuario_id)
);

create table renovacion(
renovacion_id int not null,
usuario_id int not null,
tipo_usuario_id int not null,
fecha_alta date not null,
fecha_vencimiento date null,
primary key(renovacion_id)
);

alter table plato
add constraint categoria
foreign key (categoria_id)
references categoria(categoria_id);

alter table plato
add constraint restaurante
foreign key (restaurante_id)
references restaurante(restaurante_id);

alter table ingrediente
add constraint plato
foreign key (plato_id)
references plato(plato_id);

alter table pedido
add constraint usuario_pedido
foreign key (usuario_id)
references usuario(usuario_id);

alter table pedido
add constraint plato_pedido
foreign key (plato_id)
references plato(plato_id);

alter table renovacion
add constraint tipo_usuario
foreign key (tipo_usuario_id)
references tipo_usuario(tipo_usuario_id);

alter table renovacion
add constraint usuario_renovacion
foreign key (usuario_id)
references usuario(usuario_id);