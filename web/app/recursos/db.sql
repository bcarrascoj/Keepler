
create database recetario;
use recetario;
create table usuarios(
    id_usuario int not null auto_increment primary key,
    nombre varchar(200) not null,
    paterno varchar(200) not null,
    materno varchar(200) not null,
    email varchar(200) not null,
    contraseña varchar(65) not null,
    tipo_usuario int not null
);

insert into usuarios values(null,'Brando','Carrasco','Jimenez','brando@gmail.com',sha256('123456'),0);
insert into usuarios values(null,'Osvaldo','Jimenez','Carrasco','osvaldo@gmail.com',sha256('123456'),1);


create table recetas(
    id_receta int not null auto_increment primary key,
    nombre varchar(200) not null,
    descripcion varchar(200) not null,
    ingredientes varchar(200) not null,
    id_usuario int not null,
    foreign key (id_usuario) references usuarios(id_usuario)

);