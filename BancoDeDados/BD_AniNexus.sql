create database AniNexus;
use AniNexus;

create table tbNoticia ( 
	idNoticia int primary key auto_increment,
    dataNotica varchar(45),
    tituloNoticia varchar(50),
    textoNoticia varchar(255)
);


create table Usuario (
	idUsuario int primary key auto_increment,
    nomeUsuario varchar(50),
    email varchar(50),
    senha varchar(50)
);

create table tbComentario (

);

select * from Usuario;

