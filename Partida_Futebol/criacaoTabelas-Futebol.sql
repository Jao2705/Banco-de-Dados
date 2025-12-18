drop table partidas_X_jogadores_A;
drop table partidas_X_jogadores_B;
drop table jogadores;
drop table times;
drop table estadio;
drop table partidas;





create table times (
	id_time INT PRIMARY KEY,
	nome_time VARCHAR(30) NOT NULL
);

create table jogadores(
	id_time INT,
	numero_camiseta INT ,
	nome_jogador VARCHAR(30) NOT NULL,

	PRIMARY KEY(id_time, numero_camiseta),
	FOREIGN KEY(id_time) REFERENCES times(id_time)
);

create table estadio(
	id_estadio INT PRIMARY KEY,
	nome_estadio VARCHAR(30) NOT NULL
);

create table partidas(
	id_partida INT PRIMARY KEY,
	data_partida DATE NOT NULL,
	time_id_time_A INT,
	time_id_time_B INT,
	estadio_id_estadio INT,
	FOREIGN KEY(time_id_time_A) REFERENCES times(id_time),
	FOREIGN KEY(time_id_time_B) REFERENCES times(id_time),
	FOREIGN KEY(estadio_id_estadio) REFERENCES estadio(id_estadio)
);

create unique index idx_partida_A
	on partidas(id_partida, time_id_time_A);

create unique index idx_partida_B
	on partidas(id_partida, time_id_time_B);

create table partidas_X_jogadores_A(
	id_partida INT,
	partidas_times_id_time INT,
	jogadores_numero_camiseta INT,
	gol INT,
	minuto_gol INT,
	PRIMARY KEY(id_partida, partidas_times_id_time, jogadores_numero_camiseta),
	
	FOREIGN KEY(id_partida, partidas_times_id_time) REFERENCES partidas(id_partida, time_id_time_A),
	FOREIGN KEY(partidas_times_id_time, jogadores_numero_camiseta) REFERENCES jogadores(id_time, numero_camiseta)
);

create table partidas_X_jogadores_B(
	id_partida INT,
	partidas_times_id_time INT,
	jogadores_numero_camiseta INT,
	gol INT,
	minuto_gol INT,
	PRIMARY KEY(id_partida, partidas_times_id_time, jogadores_numero_camiseta),

	FOREIGN KEY(id_partida, partidas_times_id_time) REFERENCES partidas(id_partida, time_id_time_B),
	FOREIGN KEY(partidas_times_id_time, jogadores_numero_camiseta) REFERENCES jogadores(id_time, numero_camiseta)
);