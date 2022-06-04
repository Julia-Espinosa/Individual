create database cvv;
use cvv;

create table funcionario(
idFuncionario int primary key auto_increment,
nomeFuncionario varchar(45),
idadeFuncionario char(2),
cpfFuncionario char (11),
semestreFuncionario varchar(2),
crpFuncionario varchar (30),
emailFuncionario varchar (45),
senhaFuncionario varchar(45)
);

create table paciente(
idPaciente int primary key auto_increment,
nomePaciente varchar(45),
idadePaciente char(2),
cpfPaciente char (11),
emailPaciente varchar (45),
senhaPaciente varchar(45)
);

create table telefone(
idTelefone int primary key auto_increment,
celular varchar(45),
fkFuncionario int,
fkPaciente int,
foreign key (fkFuncionario) references Funcionario (idFuncionario),
foreign key (fkPaciente) references Paciente (idPaciente)
);

create table acesso(
idAcesso int primary key auto_increment,
cliques datetime);