create database AniNexus;
use AniNexus;

create table Usuario (
	idUsuario int primary key auto_increment,
    nomeUsuario varchar(50),
    email varchar(50),
    senha varchar(50)
);

select * from Usuario;

