INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (720, 'Ana', 'Rua 17 n. 19', 'Niterói','24358310','RJ','12113231/0001-34','2134');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (870, 'Flávio', 'Av. Pres. Vargas 10', 'São Paulo', '22763931', 'SP', '1225534126/9387-9','4631');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (110, 'Jorge', 'Rua Caiapo 13', 'Curitiba', '30078500', 'PR', '14512764/9834-9',null);
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (222, 'Lúcia', 'Rua Itabira 123 Loja 9', 'Belo Horizonte', '22124391', 'MG', '28315213/9348-8', '2985');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (830, 'Maurício', 'Av. Paulista 1236 sl/2345', 'São Paulo', '3012683', 'SP', '32816985/7465-6', '9343');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (130, 'Edmar', 'Rua da Praia s/n', 'Salvador', '30079300', 'BA', '23463284/234-9', '7121');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (410, 'Rodolfo', 'Largo da Lapa 27 sobrado', 'Rio de Janeiro', '30078900', 'RJ', '12835126/7326-8','7431');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (20,  'Beth', 'Av. Climério n. 45', 'São Paulo', '25679300', 'SP', '32485126/7326-8', '9280');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (157, 'Paulo', 'Tv. Moraes c/3', 'Londrina',null ,'PR', '32848223/324-2','1923');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (180, 'Lívio', 'Av. Beira Mar n. 1256', 'Florianópolis', '30077500', 'SC', '12736571/2347-4',null );
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (260, 'Susana', 'Rua Lopes Mendes', 'Niterói', '30046500', 'RJ', '21763571/232-9', '2530');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (290, 'Renato', 'Rua Meireles n. 123 bl. 2 sl. 345', 'São Paulo', '30225900', 'SP', '13276571/1231-4', '1820');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (390, 'Sebastião', 'Rua da Igreja n. 10', 'Uberaba', '30438700', 'MG', '32176547/213-3', '9071');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (234, 'José', 'Quadra 3 bl. 3 sl. 1003', 'Brasília', '22841650', 'DF', '21763576/1232-3','2931');
INSERT INTO cliente(codigo_cliente,nome_cliente, endereco, cidade, CEP, UF, CNPJ, IE)
VALUES (235, 'Juriscleide', 'Quadra 1 Lote 1', 'Anápolis', '75000000', 'GO', '21763572/1232-3','2932');


INSERT INTO vendedor(codigo_vendedor, nome_vendedor, salario_fixo, faixa_comissao)
VALUES (209,	'José', 1800, 'C');
INSERT INTO vendedor(codigo_vendedor, nome_vendedor, salario_fixo, faixa_comissao)
VALUES (111,	'Carlos', 2490, 'A');
INSERT INTO vendedor(codigo_vendedor, nome_vendedor, salario_fixo, faixa_comissao)
VALUES (11,	'João', 2780, 'C');
INSERT INTO vendedor(codigo_vendedor, nome_vendedor, salario_fixo, faixa_comissao)
VALUES (240,	'Antônio', 9500, 'C');
INSERT INTO vendedor(codigo_vendedor, nome_vendedor, salario_fixo, faixa_comissao)
VALUES (720, 	'Felipe', 4600, 'A');
INSERT INTO vendedor(codigo_vendedor, nome_vendedor, salario_fixo, faixa_comissao)
VALUES (213, 	'Jonas', 2650, 'C');
INSERT INTO vendedor(codigo_vendedor, nome_vendedor, salario_fixo, faixa_comissao)
VALUES (101, 	'João', 2650, 'C');
INSERT INTO vendedor(codigo_vendedor, nome_vendedor, salario_fixo, faixa_comissao)
VALUES (310,	'Josias', 870, 'B');
INSERT INTO vendedor(codigo_vendedor, nome_vendedor, salario_fixo, faixa_comissao)
VALUES (250,	'Maurício', 2930, 'B');
insert into vendedor(codigo_vendedor,nome_vendedor, salario_fixo,faixa_comissao)
values(750,'Seu Zé Lorota','5000.00', 'A');


INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (121,20,410,209);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (97,20,720,101);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (101,1,720,101);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (137,20,720,720);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (148,20,720,101);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (189,15,870,213);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (104,30,110,101);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (203,30,830,250);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (98,20,410,209);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (143,30,20,111);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (105,15,180,240);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (111,20, 260,240);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (103,20,260,11);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (91,20,260,11);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (138,20,260,11);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (108,15,290,310);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (119,30,390,250);
INSERT INTO pedido(numero_pedido, prazo_entrega, codigo_cliente, codigo_vendedor)
VALUES (127,10,410,11);



INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (25, 'Kg', 'Queijo', 0.97);
INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (31, 'BAR', 'Chocolate', 0.87);
INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (78, 'L', 'Vinho', 2.00);
INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (22, 'M', 'Linha', 0.11);
INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (30, 'SAC', 'Açucar', 0.30);
INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (53, 'M', 'Linha', 1.80);
INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (13, 'G', 'Ouro', 6.18);
INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (45, 'M', 'Madeira', 0.25);
INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (87, 'M', 'Cano', 1.97);
INSERT INTO produto( codigo_produto, unidade, descricao_produto, valor_unitario)
VALUES (77, 'M', 'Papel', 1.05);

INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(121, 25, 10);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(121, 31, 35);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(97, 77, 20);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(101, 31, 9);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(101, 78, 18);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(101, 13, 5);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(98, 77, 5);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(148, 45, 8);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(148, 31, 7);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(148, 77, 5);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(148, 25, 10);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(148, 78, 30);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(104, 53, 32);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(203, 31, 6);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(189, 78, 45);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(143, 31, 20);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(143, 78, 10);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(105, 78, 10);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(111, 25, 10);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(111, 78, 70);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(103, 53, 37);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(91, 77, 40);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(138, 22, 10);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(138, 77, 35);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(138, 53, 18);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(103, 13, 17);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(119, 77, 40);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(119, 13, 6);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(119, 22, 10);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(119, 53, 43);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(137, 13, 8);
INSERT INTO ITEM_DO_PEDIDO(num_pedido, codigo_produto, quantidade)
VALUES(97, 31, 10);