select * from times;
select * from jogadores;
select * from estadio;
select * from partidas;
select * from partidas_X_jogadores_A;
select * from partidas_X_jogadores_B;


-- 1) Lista de Times.
select nome_time times from times;


-- 2) Lista de Times que têm mais de 20 jogadores.

select id_time as time, count(numero_camiseta) qtd_jogadores from jogadores
group by id_time
having count(jogadores.numero_camiseta) > 20;


-- 3) Lista das Partidas com o nome do estádio, a data da partida, os times participantes e os gols marcados por cada time;

select
	nome_estadio as estadios
	,data_partida as data
	,tA.nome_time as nometimesA
	,tB.nome_time as nometimesB
	,golsA.total_gols as totalgolsa
    ,golsB.total_gols as totalgolsb
	
from partidas as p

	INNER JOIN estadio e ON e.id_estadio = p.estadio_id_estadio
	INNER JOIN times tA ON tA.id_time = p.time_id_time_a
	INNER JOIN times tB ON tB.id_time = p.time_id_time_b

--Subquerrys para contar os gols

LEFT JOIN (
    select 
        id_partida,
        sum(gol) as total_gols
    from partidas_X_jogadores_A
    group by id_partida
) as golsA on golsA.id_partida = p.id_partida


LEFT JOIN (
    select 
        id_partida,
        sum(gol) AS total_gols
    from partidas_X_jogadores_B
    group by id_partida
) as golsB on golsB.id_partida = p.id_partida

order by p.data_partida;


	

-- 4) Lista dos Jogadores que já marcaram gols.

select distinct
	nome_jogador
from
	jogadores
	,partidas_X_jogadores_A as pA
	,partidas_X_jogadores_B as pB
	,partidas as p
where
	(p.id_partida = pA.id_partida or p.id_partida = pB.id_partida) and 
	(numero_camiseta = pA.jogadores_numero_camiseta and numero_camiseta = pB.jogadores_numero_camiseta)
order by nome_jogador


-- 5) Lista de todas as partidas realizadas em um determinado estádio.

select distinct
	nome_estadio as estadios
	,tA.nome_time as nometimesA
	,tB.nome_time as nometimesB
	
from 
	estadio as e
	,partidas as p
	,times as tA
	,times as tB
	,partidas_X_jogadores_A as pA
	,partidas_X_jogadores_B as pB
	
where 	p.id_partida = pA.id_partida and p.id_partida = pB.id_partida and p.estadio_id_estadio = e.id_estadio
		and tA.id_time = pA.partidas_times_id_time and tB.id_time = pB.partidas_times_id_time
order by nome_estadio




-- 6) Média de gols por partida para cada time.


with goals as(
	select 
		id_partida,
		partidas_times_id_time,
		sum(gol) as total_gols
	from 
		partidas_X_jogadores_A
	group by id_partida, partidas_times_id_time
	UNION
	select 
		id_partida,
		partidas_times_id_time,
		sum(gol) as total_gols
	from 
		partidas_X_jogadores_B
	group by id_partida, partidas_times_id_time
), 
media_gols as (
	select
		partidas_times_id_time, 
		avg(total_gols) 
	from 
		goals
	group by partidas_times_id_time
)

select partidas_times_id_time, avg(total_gols) from goals
group by partidas_times_id_time

