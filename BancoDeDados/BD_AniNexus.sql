create database AniNexus;
use AniNexus;

create table tbNoticia ( 
	idNoticia int primary key auto_increment,
    dataNotica varchar(45),
    tituloNoticia varchar(50),
    textoNoticia varchar(1000)
);
 
create table tbGuiaTemporada (
	idTemporada int primary key auto_increment,
    thumbnailTemporada varchar(45),
    tituloTemporada varchar(45),
    anoTemporada char(4),
    mesTemporada varchar(9),
    dataPublicacao varchar(45)
);

create table tbAnime (
	idAnime int primary key auto_increment,
    nomeAnime varchar(50),
    fonte varchar(30),
    genero varchar(45),
    diretor varchar(45),
    sinopse varchar(500)
);
 

create table Usuario (
	idUsuario int primary key auto_increment,
    nomeUsuario varchar(50),
    email varchar(50),
    senha varchar(50)
);

insert into Usuario (nomeUsuario, email, senha) values
('admin', 'admin@gmail.com', 'admin123');

select * from Usuario;

create table tbChat (
	idDescricao int primary key auto_increment,
    descriacao varchar(150),
    fkUsuarioDescricao int,
    foreign key (fkUsuarioDescricao) references Usuario (idUsuario)
);


create table tbAvaliacaoAnime (
	fkUsuarioAvaliacao int,
    foreign key (fkUsuarioAvaliacao) references Usuario (idUsuario),
    fkAnimeAvaliacao int,
    foreign key (fkAnimeAvaliacao) references tbAnime (idAnime),
    notaAvaliacao decimal(4,2)
);


 


