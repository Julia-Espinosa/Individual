CREATE DATABASE cvv;

USE cvv;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nomeUsuario VARCHAR(45),
	emailUsuario VARCHAR(45),
	senhaUsuario VARCHAR(45)
);

CREATE TABLE acesso (
idAcesso int primary key auto_increment,
cliques datetime
);

create table telefone(
idTelefone int primary key auto_increment,
celular varchar(45),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario)
);
