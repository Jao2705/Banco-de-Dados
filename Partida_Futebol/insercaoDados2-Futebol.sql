insert into times(id_time, nome_time) values
(1, 'UEG'),
(2, 'Harvard'),
(3, 'MIT'),
(4, 'UFRJ'),
(5, 'UniEvangelica'),
(6, 'Anhanguera'),
(7, 'Unopar'),
(8, 'Senac')


insert into jogadores (id_time, numero_camiseta, nome_jogador) VALUES
(1, 10, 'Tsubasa Ozora'),
(1, 14, 'Ryo Ishizaki'),
(1, 7, 'Hajime Taki'),
(1, 8, 'Mamoru Izawa'),
(1, 9, 'Teppei Kisugi'),
(1, 2, 'Koji Nishio'),
(1, 3, 'Takeshi Kishida'),
(1, 4, 'Shingo Takasugi'),

(2, 10, 'Kojiro Hyuga'),
(2, 1, 'Ken Wakashimazu'),
(2, 5, 'Takeshi Sawada'),
(2, 9, 'Kazuki Sorimachi'),
(2, 12, 'Hiroshi Jito'),
(2, 4, 'Hanji Urabe'),
(2, 3, 'Mitsuru Sano'),
(2, 6, 'Kenichi Iwami'),
(2, 7, 'Masanobu Kanda'),
(2, 8, 'Yuji Sugimoto'),

(3, 1, 'Genzo Wakabayashi'),
(3, 5, 'Hermann Kaltz'),
(3, 6, 'Manfred Margus'),
(3, 9, 'Franz Schester'),
(3, 2, 'Gino Hernandez'),
(3, 4, 'Makoto Soda'),
(3, 3, 'Jun Misugi'),
(3, 15, 'Shingo Aoi'),

(4, 10, 'Hikaru Matsuyama'),
(4, 1, 'Yuji Soga'),
(4, 2, 'Masanori Kato'),
(4, 3, 'Takeshi Okamura'),
(4, 4, 'Kenji Sugimoto'),
(4, 5, 'Akira Ichinose'),
(4, 6, 'Takeshi Kawai'),
(4, 7, 'Kohei Sudo'),
(4, 8, 'Shuji Yoshikawa'),
(4, 9, 'Tatsuo Minowa'),
(4,	11,	'Kentaro Miura'),
(4,	12,	'Masashi Kishimoto'),
(4,	13,	'Akira Toriyama'),
(4,	14,	'Ken Arai'),
(4,	15,	'Natsuki Hanae'),
(4,	16,	'Yoshimura'),
(4,	17,	'Touka'),
(4,	18,	'Ken Kaneki'),
(4,	19,	'Junji ito'),
(4,	20,	'Yuno'),

(5, 10, 'Juan Diaz'),
(5, 9, 'Alan Pascal'),
(5, 1, 'Ricardo Espadas'),
(5, 14, 'Jorge Valdano'),
(5, 12, 'Galvan'),
(5, 8, 'Díaz Substituto A'),
(5, 7, 'Pascal Substituto B'),
(5, 13, 'Ricardo'),
(5, 15, 'Seba'),
(5, 16, 'Montero'),

(6, 11, 'Karl Heinz Schneider'),
(6, 1, 'Deuter Müller'),
(6, 8, 'Hermann Kaltz'),
(6, 9, 'Franz Schester'),
(6, 7, 'Leroi'),
(6, 2, 'Jakob'),
(6, 3, 'Kapellmann'),
(6, 4, 'Brunner'),
(6, 5, 'Ricken'),
(6, 10, 'Staub'),
(6,	6,	'Dieter'),
(6,	12,	'Zimmerman'),
(6,	13,	'Johan Liebert'),
(6,	14,	'Eren Jager'),
(6,	15,	'Hans Landa'),
(6,	16,	'Stiglitz'),
(6,	17,	'Till Lindemann'),
(6,	18,	'Gottfried Wilhelm Leibniz'),
(6,	19,	'Philipe K. Dick'),
(6,	20,	'B.J. Blazkowicz'),


(7, 10, 'Rivaul'),
(7, 1, 'Rechard'),
(7, 4, 'Ferreira'),
(7, 5, 'Gordoba'),
(7, 6, 'Payol'),
(7, 7, 'Mena'),
(7, 8, 'Luciana'),
(7, 9, 'Gascoigne'),
(7, 11, 'Luis Enrique'),

(8, 9, 'Kojiro Hyuga'),
(8, 1, 'Genzo Wakabayashi'),
(8, 15, 'Shingo Aoi'),
(8, 5, 'Jun Misugi'),
(8, 8, 'Hikaru Matsuyama'),
(8, 12, 'Takeshi Sawada'),
(8, 3, 'Makoto Soda'),
(8, 4, 'Hiroshi Jito')


insert into estadio(id_estadio, nome_estadio) values(1, 'Israel Pires Feitosa Filho');
insert into estadio(id_estadio, nome_estadio) values(2, 'Vanessa Perim');
insert into estadio(id_estadio, nome_estadio) values(3, 'Marcelo Henrique da Silva');
insert into estadio(id_estadio, nome_estadio) values(4, 'Guiliano Rangel');

insert into partidas(id_partida, data_partida, time_id_time_A, time_id_time_B, estadio_id_estadio) values
(1, '1991-12-26', 1, 5, 1),
(2, '1789-07-14', 3, 8, 4),
(3, '1917-05-29', 2, 6, 3),
(4, '1980-12-08', 4, 7, 2),
(5, '2011-08-05', 1, 3, 1),
(6, '2015-03-25', 6, 4, 2),
(7, '1989-11-09', 1, 6, 4)


--partida 1 UEG VS UniEvangelica

insert into partidas_x_jogadores_A(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(1, 1, 10, 1, 10),
(1, 1, 7, 1, 15),
(1, 1, 2, 1, 20);

insert into partidas_x_jogadores_B(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(1, 5, 16, 1, 30),
(1, 5, 14, 1, 5)


--partida 2 MIT VS Senac

insert into partidas_x_jogadores_a(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(2, 3, 15, 1, 48);

--partida 3 Harvard VS Anhanguera

insert into partidas_x_jogadores_b(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(3, 6, 18, 1, 10),
(3, 6, 15, 1, 19),
(3, 6, 13, 1, 28),
(3, 6, 19, 1, 35),
(3, 6, 20, 1, 49)

insert into partidas_x_jogadores_a(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(3, 2, 7, 1, 84)

---partida 4 UFRJ VS UNOPAR

insert into partidas_x_jogadores_a(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(4, 4, 18, 1, 30),
(4, 4, 20, 1, 45),
(4, 4, 11, 1, 50)

insert into partidas_x_jogadores_b(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(4, 7, 9, 1, 5),
(4, 7, 11, 1, 15),
(4, 7, 7, 1, 25)

--partida 5 UEG VS MIT

insert into partidas_x_jogadores_a(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(5, 1, 9, 1, 3),
(5, 1, 3, 1, 50)

insert into partidas_x_jogadores_b(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(5, 3, 4, 1, 10)

--partida 6 Anhanguera VS UFRJ

insert into partidas_x_jogadores_a(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(6, 6, 19, 1, 19)

--partida 7 UEG VS Anhanguera
insert into partidas_x_jogadores_a(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(7, 1, 14, 1, 2),
(7, 1, 9, 1, 4),
(7, 1, 3, 1, 7)

insert into partidas_x_jogadores_b(id_partida, partidas_times_id_time, jogadores_numero_camiseta, gol, minuto_gol) values
(7, 6, 18, 1, 15)