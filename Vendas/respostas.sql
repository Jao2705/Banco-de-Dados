-- 1. Fazer uma função que retorne o valor total de um pedido passando o número do pedido.
CREATE OR REPLACE FUNCTION total_pedidos (pedido numeric(10,2)) RETURNS numeric(10,2) as
$marcador$
	select 
		sum(ip.quantidade*pro.valor_unitario) 
	from 
		item_do_pedido as ip
		LEFT JOIN produto as pro on pro.codigo_produto = ip.codigo_produto
	where 
		ip.num_pedido = $1
$marcador$
LANGUAGE 'sql';

select * from total_pedidos(97) as total;


-- 2. Fazer uma função que retorne a quantidades de pedidos realizados por um cliente(passando o código do cliente como parâmetro)
CREATE OR REPLACE FUNCTION cliente_quantidade_pedidos (codigo int) RETURNS int as
$marcador$
	
	select 
		count(p.numero_pedido) 
	from 
		cliente as c
		LEFT JOIN pedido as p on c.codigo_cliente = p.codigo_cliente
	where
		c.codigo_cliente = $1
	
$marcador$
LANGUAGE 'sql';

select * from cliente_quantidade_pedidos(410) as total;


-- 3. Alterar a tabela de produto adicionando a coluna quantidade_em_estoque do tipo smallint;
CREATE OR REPLACE PROCEDURE adciona_coluna() as
$marcador$
	ALTER TABLE produto ADD COLUMN quantidade_em_estoque smallint;
$marcador$
LANGUAGE 'sql';

call adciona_coluna();


-- 4. Alterar o valor da quantidade_em_estoque de todos os produtos para 40;
CREATE OR REPLACE PROCEDURE preenche_tabela() as
$marcador$

	update produto
		set quantidade_em_estoque = 40;

$marcador$
LANGUAGE 'sql';

call preenche_tabela();


-- 5. Fazer uma função que retorno a quantidade de clientes que já compraram um determinado produto (passando o código do produto como parâmetro)
CREATE OR REPLACE FUNCTION produto_quantidade_clientes(produto_codigo int) RETURNS smallint as
$marcador$

	select 
		count(p.codigo_cliente)
	from
		item_do_pedido as ip
		,pedido as p
	where
		ip.codigo_produto = $1 and ip.num_pedido = p.numero_pedido
$marcador$
LANGUAGE 'sql';

select * from produto_quantidade_clientes(13)

-- 6. Fazer uma trigger para ser disparada após a inserção de uma linha na tabela "item_do_pedido" para atualizar a quantidade na tabela de produto(coluna quantidade_em_estoque).

CREATE OR REPLACE FUNCTION insere_produto() RETURNS TRIGGER AS
$marcador$

Begin
		UPDATE produto as p SET quantidade_em_estoque = quantidade_em_estoque + quantidade
		WHERE p.codigo_produto = NEW.codigo_produto;
		RETURN NEW;
End;

$marcador$
LANGUAGE 'plpgsql';

CREATE TRIGGER produto AFTER INSERT ON item_do_pedido
FOR EACH ROW EXECUTE FUNCTION insere_produto();

insert into item_do_pedido values()

-- 7. Fazer uma trigger para ser disparada após a remoção de uma linha na tabela "item_do_pedido" para atualizar a quantidade na tabela de produto(coluna quantidade_em_estoque).
CREATE OR REPLACE FUNCTION remove_produto() RETURNS TRIGGER AS
$marcador$

Begin
		UPDATE produto SET quantidade_em_estoque = (quantidade_em_estoque - OLD.quantidade)
		WHERE codigo_produto = OLD.codigo_produto;
		RETURN OLD;
End;

$marcador$
LANGUAGE 'plpgsql';

DROP TRIGGER remove ON item_do_pedido;

CREATE OR REPLACE TRIGGER remove AFTER DELETE ON item_do_pedido
FOR EACH ROW EXECUTE FUNCTION remove_produto();

delete from item_do_pedido where item_do_pedido.codigo_produto = 87;

INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(119, 87, 5);

SELECT * FROM item_do_pedido where codigo_produto = 87;
SELECT * FROM produto where codigo_produto = 87;

-- 8. Fazer uma trigger para ser disparada após a alteração de uma linha na tabela "item_do_pedido" para atualizar a quantidade na tabela de produto(coluna quantidade_em_estoque).
CREATE OR REPLACE FUNCTION altera_quantidade_produto() RETURNS TRIGGER AS
$marcador$

Begin
		UPDATE produto  
		SET quantidade_em_estoque = (quantidade_em_estoque + OLD.quantidade) - NEW.quantidade
		WHERE codigo_produto = OLD.codigo_produto;
		RETURN NEW;
End;
$marcador$
LANGUAGE 'plpgsql';

CREATE OR REPLACE TRIGGER altera_quantidade_produto AFTER UPDATE ON item_do_pedido
FOR EACH ROW EXECUTE FUNCTION altera_quantidade_produto();

UPDATE item_do_pedido
SET quantidade = 10
WHERE num_pedido = 97 and codigo_produto = 77;


-- 9. Adicionar a coluna valor_total_pedido (do tipo numeric(10,2) ) na tabela pedido.
ALTER TABLE pedido ADD COLUMN valor_total_pedido numeric(10,2);

-- 10. Fazer uma trigger para ser disparada após a inclusão, remoção e alteração na tabela "item_do_pedido" para atualizar o valor total do pedido na tabela pedido(coluna valor_total_pedido).
CREATE OR REPLACE FUNCTION atualiza_valor_pedido() RETURNS TRIGGER AS
$marcador$

BEGIN
		UPDATE pedido SET valor_total_pedido = valor_total_pedido + (valor_unitario * (NEW.quantidade - OLD.quantidade) - OLD.quantidade)
		FROM produto
		WHERE produto.codigo_produto = NEW.codigo_produto and numero_pedido = NEW.num_pedido;
		RETURN NEW;
END;

$marcador$
LANGUAGE 'plpgsql';

DROP TRIGGER atualiza ON item_do_pedido;

CREATE OR REPLACE TRIGGER atualiza AFTER INSERT OR UPDATE OR DELETE ON item_do_pedido
FOR EACH ROW EXECUTE FUNCTION atualiza_valor_pedido();

delete from item_do_pedido where num_pedido = 121 and codigo_produto = 13;

INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(121, 13, 10);

SELECT * FROM item_do_pedido where num_pedido = 121;
SELECT * FROM produto where codigo_produto = 13;


-- 11. Fazer uma dml para inserir 5 pedidos completos(pedido e item_do_pedido(pelo menos 3 itens))

INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor,valor_total_pedido)
VALUES (340,30,235,750,0);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor,valor_total_pedido)
VALUES (32,40,130,240,0);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor,valor_total_pedido)
VALUES (10,10,870,213,0);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor,valor_total_pedido)
VALUES (116,20,830,101,0);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor,valor_total_pedido)
VALUES (129,15,157,310,0);


INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(34030,90);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(121, 31, 35);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(97, 77, 20);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(101, 31, 9);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(101, 78, 18);


--12. Fazer uma procedure(function sem retorno) que remova um pedido, a procedure deve receber como parametro o número do pedido
CREATE OR REPLACE PROCEDURE remove_pedido (pedido int) AS
$marcador$

	DELETE FROM item_do_pedido WHERE num_pedido = $1;

	DELETE FROM pedido WHERE numero_pedido = $1;

$marcador$
LANGUAGE 'sql';

call remove_pedido(148);