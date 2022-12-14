drop database if exists ocasteloanimado;

create database if not exists OCasteloAnimado;

use OCasteloAnimado;

create table if not exists Usuario (
	idUsuario int primary key auto_increment,
    nome varchar(45) not null,
    sobrenome varchar(45) not null,
    email varchar(100) not null,
    senha varchar(45) not null
);

create table if not exists Indicacao (
	idIndicacao int auto_increment,
    nome varchar(45),
    email varchar(100),
    relacao varchar(45),
    fkUsuario int,
		foreign key (fkUsuario) references Usuario (idUsuario),
	primary key (idIndicacao, fkUsuario)
);

create table if not exists Filme (
	idFilme int primary key auto_increment,
    nome varchar(100) not null,
    ano int not null
);

create table if not exists Votacao (
	idVotacao int auto_increment,
    data_hora datetime not null default current_timestamp,
    fkUsuario int,
		foreign key (fkUsuario) references Usuario(idUsuario),
	fkFilme int,
		foreign key (fkFilme) references Filme(idFilme),
	primary key (idVotacao, fkUsuario, fkFilme)
);

insert into filme values 
	(null, 'A Viagem de Chihiro', 2001),
	(null, 'Meu Amigo Totoro', 1988),
	(null, 'O Castelo Animado', 2004),
	(null, 'Princesa Mononoke', 1997),
	(null, 'O Serviço de Entregas da Kiki', 1989),
	(null, 'Ponyo', 2008),
	(null, 'Porco Rosso: O Último Herói Romântico', 1992),
	(null, 'O Reino dos Gatos', 2002),
	(null, 'Vidas ao Vento', 2013),
    (null, 'O Mundo dos Pequeninos', 2010),
	(null, 'As Memórias de Marnie', 2014),
	(null, 'Contos de Terramar', 2006);
    
select filme.nome from filme
	join votacao on filme.idFilme = votacao.fkFilme
    join usuario on usuario.idUsuario = votacao.fkUsuario;
    
select * from filme;
select * from indicacao;
select * from usuario;
select * from votacao;

select count(fkFilme), filme.nome from votacao
	join filme on Filme.idFilme = votacao.fkFilme
		group by Filme.nome;
        
insert into usuario values 
	(null, 'Johnatan', 'Cardozo', 'johnny@gmail.com', 123),
	(null, 'Lucas', 'Jorge', 'lucas@gmail.com', 123),
	(null, 'Victor', 'Daniel', 'victor@gmail.com', 123),
	(null, 'Paula', 'Maria', 'paula@gmail.com', 123),
	(null, 'Erica', 'Tavares', 'erica@gmail.com', 123),
	(null, 'Mauricio', 'Ribeiro', 'mauricio@gmail.com', 123),
	(null, 'Alisson', 'Moreira', 'alisson@gmail.com', 123),
	(null, 'Gianlucca', 'Gutierrez', 'gian@gmail.com', 123),
	(null, 'Gabriel', 'Ferreira', 'gabs@gmail.com', 123),
	(null, 'Noemi', 'Bezerra', 'noemi@gmail.com', 123),
	(null, 'Sara', 'Souza', 'sara@gmail.com', 123),
	(null, 'Marcela', 'Macedo', 'marcela@gmail.com', 123),
	(null, 'Vinicius', 'Venâncio', 'vinicius@gmail.com', 123),
	(null, 'Mateus', 'Joaquim', 'mateus@gmail.com', 123);
        
Select * from votacao where fkUsuario = 1;

insert into votacao values
	(null, now(), 1, 3),
	(null, now(), 2, 12),
	(null, now(), 3, 1),
	(null, now(), 4, 1),
	(null, now(), 5, 1),
	(null, now(), 6, 12),
	(null, now(), 7, 3),
	(null, now(), 8, 2),
	(null, now(), 9, 4),
	(null, now(), 10, 5),
	(null, now(), 11, 6),
	(null, now(), 12, 8),
	(null, now(), 13, 9),
	(null, now(), 14, 10);
