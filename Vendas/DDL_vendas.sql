drop table cliente;
drop table vendedor;
drop table pedido;
drop table produto;
drop table item_do_pedido;


CREATE TABLE cliente (
	codigo_cliente 	smallint not null,
	nome_cliente 	varchar(50),
	endereco 		varchar(100),
	cidade 			varchar(20),
	CEP 			varchar(8),
	UF 				char(2),
	CNPJ			varchar(20),
	IE				varchar(20),
	PRIMARY KEY(codigo_cliente)
);

CREATE TABLE vendedor(
	codigo_vendedor	smallint not null,
	nome_vendedor	varchar(50),
	salario_fixo	numeric(10,2),
	faixa_comissao	char(1),
	primary key	(codigo_vendedor)
);

CREATE TABLE pedido(
	numero_pedido 	int not null,
	prazo_entrega	smallint not null,
	codigo_cliente	smallint not null,
	codigo_vendedor	smallint not null,
	FOREIGN KEY (codigo_cliente)
		REFERENCES cliente(codigo_cliente),
	FOREIGN KEY (codigo_vendedor)
		REFERENCES vendedor(codigo_vendedor),
	PRIMARY KEY (numero_pedido)
);

CREATE TABLE produto (
	codigo_produto		smallint not null,
	unidade 			varchar(3),
	descricao_produto	varchar(30),
	valor_unitario		numeric(10,2),
	PRIMARY KEY(codigo_produto)
);

CREATE TABLE item_do_pedido (
	num_pedido 		int not null,
	codigo_produto	smallint not null,
	quantidade		decimal,
	FOREIGN KEY (num_pedido)
		REFERENCES pedido(numero_pedido),
	FOREIGN KEY (codigo_produto)
		REFERENCES produto(codigo_produto),
	PRIMARY KEY (num_pedido, codigo_produto)
);

