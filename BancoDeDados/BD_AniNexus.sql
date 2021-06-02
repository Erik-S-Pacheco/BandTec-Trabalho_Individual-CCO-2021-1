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

select * from Usuario;

create table tbComentario (
 fkNoticiaComentario int,
 foreign key (fkNoticiaComentario) references tbNoticia(idNoticia),
 fkUsuarioComentario int,
 foreign key (fkUsuarioComentario) references Usuario(idUsuario),
 dataComentario date,
 primary key (fkNoticiaComentario, fkUsuarioComentario, dataComentario),
 textoComentario varchar(255)
);


 


