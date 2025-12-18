-- 1.Listar os dados de todos os Corretores cadastrados.

select * from corretor;

-- 2.Listar os dados de todos os Clientes cadastrados.

select * from cliente


-- 3.Listar os dados de todas as visitas realizadas a imóveis.(pelo menos o nome do Cliente, Corretor, imóvel, data da visita e tipo: para aluguel ou venda)

select c.nome_cliente, ct.nome_corretor, i.id_imovel, v.data_visita, v.tipo_visita from visita as v
INNER JOIN cliente c ON v.id_cliente = c.id_cliente
INNER JOIN corretor ct ON v.id_corretor = ct.id_corretor
INNER JOIN imovel i ON v.id_imovel = i.id_imovel
ORDER BY v.id_visita

-- 4.Listar os dados de todas as vendas realizadas na imobiliária. (pelo menos o nome do cliente, nome do corretor , data do inicio das negociações,
-- imóvel)

select
	nome_cliente
	,nome_corretor
	,data_visita
	,id_imovel as imovel
from
	cliente as c
	,corretor as con
	,visita as vi
where
	c.id_cliente = vi.id_cliente and con.id_corretor = vi.id_corretor
	and (classificacao = 'Negocio Fechado' and tipo_visita = 'Compra')
order by data_visita ASC

-- 5.Listar todas os imoveis e as etapas da negociação para a compra do imóvel.(Dados da venda conforme questão 4, e os dados da negociação, 
-- noma da etapa, data inicial,final, observação) 


select 
	nome_cliente
	,nome_corretor
	,data_visita
	,id_imovel as imovel
	,nome_etapa as etapa_negociacao
	,data_inicial as data_inicial_negociacao
	,data_final as data_final_negociacao
	,env.observacoes
from
	cliente as c
	,corretor as con
	,visita as vi
	,contrato as cont
	,compra as comp
	,envolve as env
	,etapa as eta
where
	c.id_cliente = vi.id_cliente and con.id_corretor = vi.id_corretor
	and vi.id_visita = cont.id_contrato and  cont.id_contrato = comp.id_contrato
	and comp.id_contrato = env.id_contrato and eta.codigo = env.codigo
	and (classificacao = 'Negocio Fechado' and tipo_visita = 'Compra')
order by  data_visita,nome_cliente, ordem ASC

-- 6.Listar todas os imoveis alugados e o histórico das vistorias e dos reparos quando a vistoria tiver gerado reparos.

select * from aluguel as a
INNER JOIN visita v on a.id_contrato = v.id_visita
INNER JOIN imovel i on v.id_imovel = i.id_imovel
INNER JOIN vistoria as vi on vi.id_imovel = i.id_imovel
INNER JOIN reparo as r on vi.id_vistoria = r.id_vistoria
ORDER BY a.id_contrato

-- 7.Fazer uma consulta com a estatística de visitas realizadas pelos corretores. Ou seja a quantidade de clientes atendido pelos corretores em um 
--intervalo de data .(o intervalo será definido conforme a sua massa de dados).

select
	count(id_cliente) AS total_clientes
	--,ct.id_corretor
	--,data_visita
from
	corretor as ct
	,visita as vi
where 
	ct.id_corretor = vi.id_corretor and (data_visita >= '2000-01-31' and data_visita <= '2010-12-31')
	--group by ct.id_corretor, data_visita

-- 8.Fazer uma consulta com a estatística de visitas realizada pelos corretores com detalhamento por tipo de visita, ou seja listar a 
--quantidade de visitas realizadas pelos corretores por tipo de visita(venda ou aluguel).

with alug as (
	select v.id_corretor, count(v.id_visita) as totalaluguel
	from visita as v
	where v.tipo_visita = 'Aluguel'
	group by v.id_corretor
),

compr as (
	select v.id_corretor, count(v.id_visita) as totalcompra
	from visita as v
	where v.tipo_visita = 'Compra'
	group by v.id_corretor
)

select coalesce(alug.id_corretor, compr.id_corretor) as id_corretor,
--alug.totalaluguel,
--compr.totalcompra
coalesce(alug.totalaluguel,0) as total_aluguel, 
coalesce(compr.totalcompra,0) as total_compra
from alug
full join compr on alug.id_corretor = compr.id_corretor


	
--  9.Listar os Clientes que nunca fizeram Visitas.

select * from cliente WHERE id_cliente NOT IN (select c.id_cliente from cliente c inner join visita as v on c.id_cliente = v.id_cliente)

-- 10.Qual o Cliente que mais comprou imóvel na imobiliária.
select cl.id_cliente, cl.nome_cliente, cl.cpf_cliente, count(v.id_cliente) as contagem from compra as c
inner join visita as v on v.id_visita = c.id_contrato
inner join cliente as cl on v.id_cliente = cl.id_cliente
group by cl.id_cliente
order by contagem desc
limit 1


-- 11.Qual o Cliente que tem mais imóveis alugados
with maximo as (
	select
		count(vi.id_cliente) as cliente
		,vi.id_cliente
	from
		visita as vi
		,contrato as con
	where 
		vi.id_visita = con.id_contrato and tipo_aluguel = 1
	group by
		vi.id_cliente
)
	
select
	max(cliente) as maximo_clientes
	,cliente.id_cliente
	,nome_cliente
from
	maximo
	,cliente
group by
	cliente.id_cliente, nome_cliente
order by
	maximo_clientes DESC
LIMIT 1

-- 12.Qual o Imóvel que mais sofreu reparos

select i.id_imovel, i.endereco_cidade, i.endereco_logradouro, i.endereco_bairro, count(i.id_imovel) as contagem from reparo as r
inner join vistoria as v on r.id_vistoria = v.id_vistoria
inner join imovel as i on i.id_imovel = v.id_imovel
group by i.id_imovel
order by contagem DESC
limit 1

-- 13.Qual o corretor mais produtivo(que mais vendeu imóveis).

select
	count(vi.id_corretor) AS total
	,vi.id_corretor
	,nome_corretor
FROM visita vi
JOIN corretor cor 
      ON cor.id_corretor = vi.id_corretor
where
	tipo_visita = 'Compra' and classificacao = 'Negocio Fechado'
group by
	nome_corretor, vi.id_corretor
order by
	total DESC


-- 14.Qual o Cliente(s) que menos atrasou ou nunca atrasou o aluguel.

select p.id_aluguel, cl.id_cliente, cl.nome_cliente, cl.cpf_cliente from pagamento as p
inner join visita as v on v.id_visita = p.id_aluguel
inner join cliente as cl on cl.id_cliente = v.id_cliente
where p.id_aluguel not in(
select p2.id_aluguel 
from pagamento as p2
where p2.situacao_pagamento = 'Atrasada')
group by p.id_aluguel, cl.id_cliente



-- 15.Qual o Cliente(s) que mais atrasou o aluguel.

select p.id_aluguel, c.nome_cliente, count(p.situacao_pagamento) as atrasado from pagamento as p
inner join visita as v on v.id_visita = p.id_aluguel
inner join cliente as c on v.id_cliente = c.id_cliente
where p.situacao_pagamento = 'Atrasada'
group by p.id_aluguel, c.nome_cliente
order by atrasado DESC
limit 1


-- 16.Qual o imóvel nunca foi visitado

select * 
from imovel as i 
where i.id_imovel NOT IN(
select im.id_imovel 
from imovel as im 
INNER JOIN visita as v on v.id_imovel = im.id_imovel)

-- 17.Qual o imóvel mais visitado que está “encalhado”. Ou seja que nunca foi comprado ou alugado.

select i.id_imovel, i.endereco_cidade, i.endereco_logradouro, i.endereco_bairro, count(v.id_imovel) as quantidade_visitas from visita as v
inner join imovel as i on i.id_imovel = v.id_imovel
where v.id_imovel not in (select v2.id_imovel from visita as v2 where v2.classificacao = 'Negocio Fechado')
group by i.id_imovel
order by quantidade_visitas desc
limit 1

-- 18.Fazer uma consulta com a estatística de clientes por sexo, ou seja a quantidade de clientes por sexo.

select
sexo, count(id_cliente) as contagem
from cliente
group by sexo

-- 19.Fazer uma consulta com a estatística de clientes por cidade.

select i.endereco_cidade, count(i.id_imovel)
from propriedade as p
inner join imovel as i on p.id_imovel = i.id_imovel
group by i.endereco_cidade

-- 20.Fazer uma consulta com a estatística de visitas realizadas por tipo, ou seja a quantidade de visita com finalidade de aluguel e a
--quantidade para compra.

select
tipo_visita, count(id_visita) as contagem
from visita
group by tipo_visita


-- 21.Listar os corretores das visitas com a finalidade(compra ou aluguel) que teve maior número de visitas

select
	count(vi.id_corretor) as total_vendas
	,vi.id_corretor
	,cor.nome_corretor
from
	corretor as cor
	,visita as vi
where
	cor.id_corretor = vi.id_corretor
group by vi.id_corretor, cor.nome_corretor
order by total_vendas DESC


-- 22.Fazer uma consulta com a estatística dos imóveis pela característica de tamanho do quintal que não estão alugados, ou seja a 
--quantidade de imóveis por tamanho do quintal que não estão alugados.


select 
	SUM(CASE WHEN tamanho_quintal = 'Pequeno' THEN 1 ELSE 0 END) AS TotalPequeno
	,SUM(CASE WHEN tamanho_quintal = 'Médio' THEN 1 ELSE 0 END) AS TotalMédio
	,SUM(CASE WHEN tamanho_quintal = 'Grande' THEN 1 ELSE 0 END) AS TotalGrande
from
	imovel as im
	,visita as vi
	,contrato as c
where
	im.id_imovel = vi.id_imovel and vi.id_visita = c.id_contrato and tipo_visita = 'Compra' 

-- 23.Fazer uma consulta com a estatística de visitas que os corretores realizaram por classificação da visita, ou seja listar: Nome  do corretor, 
--TotalNegocioFechado, TotalClienteEmDuvida, TotalVisitaPerdida, TotalApenasEstavaPesquisando

select
	cor.id_corretor
	,nome_corretor
	,SUM(CASE WHEN classificacao = 'Visita perdida' THEN 1 ELSE 0 END) AS TotalVisitaPerdida
	,SUM(CASE WHEN classificacao = 'Cliente em duvida' THEN 1 ELSE 0 END) AS TotalClienteEmDuvida
	,SUM(CASE WHEN classificacao = 'Negocio Fechado' THEN 1 ELSE 0 END) AS TotalNegocioFechado
	,SUM(CASE WHEN classificacao = 'Apenas estava pesquisando' THEN 1 ELSE 0 END) AS TotalApenasEstavaPesquisando
from
	corretor as cor
	,visita as vi
where 
	cor.id_corretor = vi.id_corretor
group by cor.id_corretor, nome_corretor

-- 24.Listar os Clientes que já fizeram as seguintes ações(todas): visita, compra, aluguel e venda

select cl.id_cliente, cl.nome_cliente, cl.cpf_cliente from visita as v_aluguel, visita as v_compra, aluguel as a, compra as c, cliente as cl, propriedade as p
where v_aluguel.id_visita = a.id_contrato
and v_compra.id_visita = c.id_contrato
and v_aluguel.id_cliente = cl.id_cliente
and v_compra.id_cliente = cl.id_cliente
and p.id_cliente = cl.id_cliente
and p.data_fim is not null


-- 25.Listar os corretores que já realizaram visitas para aluguel e compra.

select 
	con.id_corretor
	,nome_corretor
from 
	corretor as con
where con.id_corretor IN (
SELECT id_corretor
FROM visita
WHERE tipo_visita = 'Compra'

INTERSECT

SELECT id_corretor
FROM visita
WHERE tipo_visita = 'Aluguel'
)

-- 26.Listar os corretores que menos realizaram visitas.
select
	count(vi.id_corretor) as total_vendas
	,vi.id_corretor
	,cor.nome_corretor
from
	corretor as cor
	,visita as vi
where
	cor.id_corretor = vi.id_corretor
group by vi.id_corretor, cor.nome_corretor
order by total_vendas ASC

-- 27.Liste o cliente que mais teve gastos com reparos nas propriedades.
SELECT
    c.id_cliente,
    c.nome_cliente,
    SUM(r.valor_reparo) AS total_gasto
FROM cliente c
INNER JOIN (
    SELECT 
        p.id_cliente,
        v.id_vistoria
    FROM propriedade p
    INNER JOIN vistoria v 
        ON v.id_imovel = p.id_imovel
       AND v.data_vistoria BETWEEN p.data_inicio AND COALESCE(p.data_fim, v.data_vistoria)
) AS pv ON pv.id_cliente = c.id_cliente
INNER JOIN reparo r ON r.id_vistoria = pv.id_vistoria
GROUP BY 
    c.id_cliente, c.nome_cliente
ORDER BY 
    total_gasto DESC;

-- 28.Fazer uma consulta que liste o faturamento por mês separado por aluguel, venda. Formato de saída: Mês, valorTotalVenda, ValorTotalAluguel, 
--ValorTotalReparos.

--compra
with comp as (select
EXTRACT(YEAR from e.data_inicial) as ano,
EXTRACT(MONTH FROM e.data_inicial) as mes,
sum(c.preco_compra) as valor
FROM envolve as e join compra as c on
e.id_contrato = c.id_contrato
where e.codigo = 4 --etapa de pagamento
group by ano, mes
order by ano, mes),

--aluguel
alg as (select
EXTRACT(YEAR FROM p.data_pagamento) as ano,
EXTRACT(MONTH FROM p.data_pagamento) AS mes,
sum(a.preco_aluguel) as valor
FROM pagamento as p join aluguel as a on
p.id_aluguel = a.id_contrato
group by ano, mes
order by ano, mes),

--reparo
rep as (select
EXTRACT(YEAR FROM r.data_reparo) as ano,
EXTRACT(MONTH FROM r.data_reparo) AS mes,
sum(r.valor_reparo) as totalreparo
FROM reparo as r
group by ano, mes
order by ano, mes)

select
COALESCE(comp.ano, alg.ano, rep.ano) as ano,
COALESCE(comp.mes, alg.mes, rep.mes) as mes,
COALESCE(comp.valor, 0) as vendas, COALESCE(alg.valor, 0) as alguel, COALESCE(rep.totalreparo, 0) as reparo 
from comp
full join alg on alg.mes = comp.mes and comp.ano = alg.ano
full join rep on rep.mes = COALESCE(comp.mes,alg.mes) and rep.ano = COALESCE(comp.ano, alg.ano)
order by ano, mes