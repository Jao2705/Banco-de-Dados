--cliente(id_cliente, nome_cliente, cpf_cliente, sexo)
INSERT INTO cliente VALUES (1, 'Carlos Silva', '12345678901','Masculino');
INSERT INTO cliente VALUES (2, 'Ana Ribeiro', '23456789012','Feminino');
INSERT INTO cliente VALUES (3, 'João Mendes', '34567890123','Masculino');
INSERT INTO cliente VALUES (4, 'Paula Lima', '45678901234','Feminino');
INSERT INTO cliente VALUES (5, 'Ricardo Alves', '56789012345','Masculino');
INSERT INTO cliente VALUES (6, 'Fernanda Costa', '67890123456','Feminino');
INSERT INTO cliente VALUES (7, 'Diego Martins', '78901234567','Masculino');
INSERT INTO cliente VALUES (8, 'Juliana Souza', '89012345678','Feminino');
INSERT INTO cliente VALUES (9, 'Marcos Paulo', '90123456789','Masculino');
INSERT INTO cliente VALUES (10, 'Patrícia Dias', '10234567890','Feminino');



--corretor(id_corretor, nome_corretor, creci_corretor)
INSERT INTO corretor VALUES (1, 'Pedro Rocha', '1234567G');
INSERT INTO corretor VALUES (2, 'Lucas Amaral', '2345678I');
INSERT INTO corretor VALUES (3, 'Marina Lopes', '3456789D');
INSERT INTO corretor VALUES (4, 'Bruno Castro', '4567890B');
INSERT INTO corretor VALUES (5, 'Patrícia Gomes', '5678901A');
INSERT INTO corretor VALUES (6, 'Rafael Melo', '6789012J');
INSERT INTO corretor VALUES (7, 'Natália Freitas', '7890123J');
INSERT INTO corretor VALUES (8, 'Thiago Pires', '8901234M');
INSERT INTO corretor VALUES (9, 'Carla Nunes', '9012345T');
INSERT INTO corretor VALUES (10, 'Henrique Prado', '0123456U');


--imovel(id_imovel, endereco_cidade, endereco_logradouro, endereco_bairro, quantidade_quartos, quantidade_banheiros, lajotada, tamanho_quintal)
INSERT INTO imovel VALUES (1, 'Anápolis', 'Rua Goiás', 'Centro', 3, 2, 1, 'Médio');
INSERT INTO imovel VALUES (2, 'Anápolis', 'Av. Universitária', 'Jundiaí', 2, 1, 1, 'Pequeno');
INSERT INTO imovel VALUES (3, 'Anápolis', 'Rua das Flores', 'Cidade Jardim', 4, 3, 1, 'Médio');
INSERT INTO imovel VALUES (4, 'Anápolis', 'Rua Santos Dumont', 'Vila Jaiara', 2, 1, 0, 'Grande');
INSERT INTO imovel VALUES (5, 'Anápolis', 'Rua Amazonas', 'Jardim Suíço', 3, 2, 1, 'Pequeno');
INSERT INTO imovel VALUES (6, 'Anápolis', 'Rua Londrina', 'Bairro de Lourdes', 1, 1, 0, 'Pequeno');
INSERT INTO imovel VALUES (7, 'Anápolis', 'Rua Minas Gerais', 'Boa Vista', 2, 1, 1, 'Grande');
INSERT INTO imovel VALUES (8, 'Anápolis', 'Rua Paraná', 'Paraíso', 3, 2, 1, 'Médio');
INSERT INTO imovel VALUES (9, 'Anápolis', 'Rua Bahia', 'Vila Formosa', 4, 3, 1, 'Médio');
INSERT INTO imovel VALUES (10, 'Anápolis', 'Rua 15', 'Santa Isabel', 1, 1, 0, 'Pequeno');
INSERT INTO imovel VALUES (11, 'Anápolis', 'Rua 7', 'Centro', 3, 2, 1, 'Pequeno');
INSERT INTO imovel VALUES (12, 'Anápolis', 'Avenida Juscelino Kubitschek', 'Jundiaí', 2, 1, 1, 'Pequeno');
INSERT INTO imovel VALUES (13, 'Anápolis', 'Avenida Fayad Hanna', 'Cidade Jardim', 4, 2, 1, 'Médio');
INSERT INTO imovel VALUES (14, 'Anápolis', 'Avenida Souzânia', 'Vila Jaiara', 3, 1, 1, 'Pequeno');
INSERT INTO imovel VALUES (15, 'Anápolis', 'Avenida Itaipu', 'Jardim Suíço', 5, 4, 1, 'Grande');
INSERT INTO imovel VALUES (16, 'Anápolis', 'Avenida Brasil Central', 'Boa Vista', 2, 2, 0, 'Pequeno');
INSERT INTO imovel VALUES (17, 'Anápolis', 'Rua Alcides Alves Morais', 'Paraíso', 3, 2, 1, 'Pequeno');
INSERT INTO imovel VALUES (18, 'Anápolis', 'Rua Frei João Batista Vogel', 'Vila Formosa', 2, 1, 0, 'Pequeno');
INSERT INTO imovel VALUES (19, 'Anápolis', 'Avenida Universitária', 'Santa Isabel', 1, 1, 0, 'Pequeno');
INSERT INTO imovel VALUES (20, 'Anápolis', 'Rua 10 de Março', 'Centro', 4, 3, 1, 'Médio');


--propriedade(id_imovel, id_cliente, data_inicio, data_fim)
INSERT INTO propriedade VALUES (1, 1, '2025-01-01', '2025-06-30');
INSERT INTO propriedade VALUES (2, 2, '2025-01-01', NULL);
INSERT INTO propriedade VALUES (3, 3, '2025-02-01', '2025-08-01');
INSERT INTO propriedade VALUES (4, 4, '2025-02-15', NULL);
INSERT INTO propriedade VALUES (5, 5, '2025-03-01', NULL);
INSERT INTO propriedade VALUES (6, 6, '2025-03-10', '2025-09-10');
INSERT INTO propriedade VALUES (7, 7, '2025-04-01', NULL);
INSERT INTO propriedade VALUES (8, 8, '2025-04-20', NULL);
INSERT INTO propriedade VALUES (9, 9, '2025-05-01', '2025-11-01');
INSERT INTO propriedade VALUES (10, 10, '2025-05-05', NULL);
INSERT INTO propriedade VALUES (11, 1, '2025-06-01', NULL);
INSERT INTO propriedade VALUES (12, 2, '2025-06-15', NULL);
INSERT INTO propriedade VALUES (13, 3, '2025-07-01', NULL);
INSERT INTO propriedade VALUES (14, 4, '2025-07-10', '2025-12-01');
INSERT INTO propriedade VALUES (15, 5, '2025-08-01', NULL);
INSERT INTO propriedade VALUES (16, 6, '2025-08-20', NULL);
INSERT INTO propriedade VALUES (17, 7, '2025-09-01', NULL);
INSERT INTO propriedade VALUES (18, 8, '2025-09-15', NULL);
INSERT INTO propriedade VALUES (19, 9, '2025-10-01', NULL); 
INSERT INTO propriedade VALUES (20, 10, '2025-10-10', NULL);


--vistoria(id_vistoria, id_imovel, data_vistoria, detalhamento_vistoria, situacao_vistoria)
INSERT INTO vistoria VALUES (1, 1, '2025-01-10', 'Tudo ok', 'Ok');
INSERT INTO vistoria VALUES (2, 2, '2025-01-15', 'Pequenos reparos', 'Necessita reparo');
INSERT INTO vistoria VALUES (3, 3, '2025-02-10', 'Pintura necessária', 'Pintura');
INSERT INTO vistoria VALUES (4, 4, '2025-02-20', 'Casa abandonada', 'Abandono de Cliente');
INSERT INTO vistoria VALUES (5, 5, '2025-03-05', 'Ok', 'Ok');
INSERT INTO vistoria VALUES (6, 6, '2025-03-18', 'Reparo elétrico', 'Necessita reparo');
INSERT INTO vistoria VALUES (7, 7, '2025-04-25', 'Ok', 'Ok');
INSERT INTO vistoria VALUES (8, 8, '2025-05-01', 'Ok', 'Ok');
INSERT INTO vistoria VALUES (9, 9, '2025-05-10', 'Pintura externa', 'Pintura');
INSERT INTO vistoria VALUES (10, 10, '2025-05-15', 'Reparo hidráulico', 'Necessita reparo');
INSERT INTO vistoria VALUES (11, 11, '2025-06-10', 'Verificação inicial, imóvel em boas condições', 'Ok');
INSERT INTO vistoria VALUES (12, 12, '2025-06-15', 'Pequenos reparos na cozinha', 'Necessita reparo');
INSERT INTO vistoria VALUES (13, 13, '2025-07-05', 'Pintura interna recomendada', 'Pintura');
INSERT INTO vistoria VALUES (14, 14, '2025-07-20', 'Cliente desistiu, imóvel sem uso', 'Abandono de Cliente');
INSERT INTO vistoria VALUES (15, 15, '2025-08-02', 'Telhado com infiltração', 'Necessita reparo');
INSERT INTO vistoria VALUES (16, 16, '2025-08-18', 'Ok, imóvel em boas condições', 'Ok');
INSERT INTO vistoria VALUES (17, 17, '2025-09-05', 'Pintura externa necessária', 'Pintura');
INSERT INTO vistoria VALUES (18, 18, '2025-09-20', 'Reparo hidráulico no banheiro', 'Necessita reparo');
INSERT INTO vistoria VALUES (19, 19, '2025-10-03', 'Ok, imóvel pronto para uso', 'Ok');
INSERT INTO vistoria VALUES (20, 20, '2025-10-15', 'Pequenos reparos elétricos', 'Necessita reparo');
INSERT INTO vistoria VALUES (21, 2, '2025-03-20', 'Reparos concluídos, imóvel em boas condições', 'Ok');
INSERT INTO vistoria VALUES (22, 6, '2025-04-05', 'Nova vistoria após reparo elétrico, tudo ok', 'Ok');
INSERT INTO vistoria VALUES (23, 9, '2025-06-01', 'Pintura concluída, imóvel em boas condições', 'Ok');


--reparo(id_reparo, id_vistoria, data_reparo, descricao, valor_reparo)
INSERT INTO reparo VALUES (1, 2, '2025-01-16', 'Troca de fechadura', 150.00);
INSERT INTO reparo VALUES (2, 2, '2025-01-17', 'Troca de tomada', 45.00);
INSERT INTO reparo VALUES (3, 3, '2025-02-11', 'Pintura sala', 400.00);
INSERT INTO reparo VALUES (4, 3, '2025-02-12', 'Pintura quarto', 200.00);
INSERT INTO reparo VALUES (5, 4, '2025-02-21', 'Limpeza geral', 250.00);
INSERT INTO reparo VALUES (6, 4, '2025-02-23', 'Retirada de entulho', 300.00);
INSERT INTO reparo VALUES (7, 6, '2025-03-19', 'Reparo elétrico', 180.00);
INSERT INTO reparo VALUES (8, 6, '2025-03-21', 'Troca de fiação', 500.00);
INSERT INTO reparo VALUES (9, 9, '2025-05-11', 'Pintura externa', 900.00);
INSERT INTO reparo VALUES (10, 10, '2025-05-16', 'Troca de cano', 120.00);


--visita(id_visita, id_cliente, id_corretor, id_imovel, data_visita, classificacao, tipo_visita)
INSERT INTO visita VALUES (1, 1, 1, 1, '2025-01-02','Negocio fechado','Aluguel');
INSERT INTO visita VALUES (2, 2, 2, 2, '2025-01-05','Negocio fechado','Aluguel');
INSERT INTO visita VALUES (3, 3, 3, 3, '2025-02-01','Negocio fechado','Aluguel');
INSERT INTO visita VALUES (4, 4, 4, 4, '2025-02-10','Negocio fechado','Aluguel');
INSERT INTO visita VALUES (5, 5, 5, 5, '2025-03-01','Negocio fechado','Aluguel');
INSERT INTO visita VALUES (6, 6, 6, 6, '2025-03-15','Negocio fechado','Compra');
INSERT INTO visita VALUES (7, 7, 7, 7, '2025-04-02','Negocio fechado','Compra');
INSERT INTO visita VALUES (8, 8, 8, 8, '2025-04-18','Negocio fechado','Compra');
INSERT INTO visita VALUES (9, 9, 9, 9, '2025-05-03','Negocio fechado','Compra');
INSERT INTO visita VALUES (10, 10, 10, 10, '2025-05-10','Negocio fechado','Compra');
INSERT INTO visita VALUES (11, 1, 2, 11, '2025-06-01','Apenas estava pesquisando','Aluguel');
INSERT INTO visita VALUES (12, 2, 3, 12, '2025-06-10','Cliente em duvida','Aluguel');
INSERT INTO visita VALUES (13, 3, 4, 13, '2025-07-02','Apenas estava pesquisando','Compra');
INSERT INTO visita VALUES (14, 4, 5, 14, '2025-07-15','Apenas estava pesquisando','Compra');
INSERT INTO visita VALUES (15, 5, 6, 15, '2025-08-01','Cliente em duvida','Aluguel');
INSERT INTO visita VALUES (16, 6, 7, 16, '2025-08-20','Apenas estava pesquisando','Compra');
INSERT INTO visita VALUES (17, 7, 8, 17, '2025-09-03', 'Visita perdida','Aluguel');
INSERT INTO visita VALUES (18, 8, 9, 18, '2025-09-18','Apenas estava pesquisando','Compra');
INSERT INTO visita VALUES (19, 9, 10, 19, '2025-10-01','Cliente em duvida','Compra');
INSERT INTO visita VALUES (20, 10, 1, 20, '2025-10-05','Visita perdida','Aluguel');


--contrato(id_contrato, tipo_aluguel)
INSERT INTO contrato VALUES (1,1);
INSERT INTO contrato VALUES (2,1);
INSERT INTO contrato VALUES (3,1);
INSERT INTO contrato VALUES (4,1);
INSERT INTO contrato VALUES (5,1);
INSERT INTO contrato VALUES (6,0);
INSERT INTO contrato VALUES (7,0);
INSERT INTO contrato VALUES (8,0);
INSERT INTO contrato VALUES (9,0);
INSERT INTO contrato VALUES (10,0);


--aluguel(id_contrato, data_entrada_cliente, data_fechamento_negocio, preco_aluguel)
INSERT INTO aluguel VALUES (1, '2025-02-01', '2025-01-15', 2200.00);
INSERT INTO aluguel VALUES (2, '2025-03-01', '2025-02-10', 2500.00 );
INSERT INTO aluguel VALUES (3, '2025-04-01', '2025-03-12', 1850.00);
INSERT INTO aluguel VALUES (4, '2025-05-01', '2025-04-08', 2375.00);
INSERT INTO aluguel VALUES (5, '2025-06-01', '2025-05-10', 4000.00);


--pagamento(id_pagamento, id_aluguel, data_pagamento, situacao_pagamento)
INSERT INTO pagamento VALUES (1, 1, '2025-03-01', 'Pontual');
INSERT INTO pagamento VALUES (2, 1, '2025-04-01', 'Pontual');
INSERT INTO pagamento VALUES (3, 2, '2025-04-01', 'Adiantada');
INSERT INTO pagamento VALUES (4, 3, '2025-05-01', 'Pontual');
INSERT INTO pagamento VALUES (5, 4, '2025-06-01', 'Atrasado');
INSERT INTO pagamento VALUES (6, 5, '2025-07-01', 'Pontual');


--compra(id_contrato, observação, preco_compra)
INSERT INTO compra VALUES (6, 'A vista', 250000.00 );
INSERT INTO compra VALUES (7, 'Financiamento', 300000.00);
INSERT INTO compra VALUES (8, 'Parcelado', 275000.00 );
INSERT INTO compra VALUES (9, 'Fiador', 325000.00 );
INSERT INTO compra VALUES (10, 'A vista', 400000.00 );


--etapa(codigo, nome_etapa, ordem)
INSERT INTO etapa VALUES (1, 'Visita', 1);
INSERT INTO etapa VALUES (2, 'Negociacao', 2);
INSERT INTO etapa VALUES (3, 'Documentacao', 3);
INSERT INTO etapa VALUES (4, 'Pagamento', 4);
INSERT INTO etapa VALUES (5, 'Transferencia', 5);
INSERT INTO etapa VALUES (6, 'Entrega', 6);


--envolve(data_inicial, codigo, id_contrato, data_final, observacoes)
INSERT INTO envolve VALUES ('2025-02-10', 1, 6, '2025-02-10', 'Visita inicial');
INSERT INTO envolve VALUES ('2025-02-12', 2, 6, '2025-02-20', 'Negociação de preço');
INSERT INTO envolve VALUES ('2025-02-22', 3, 6, '2025-03-02', 'Documentação entregue');
INSERT INTO envolve VALUES ('2025-03-05', 4, 6, '2025-03-05', 'Pagamento realizado');
INSERT INTO envolve VALUES ('2025-03-07', 5, 6, '2025-03-07', 'Transferência de titularidade concluída');
INSERT INTO envolve VALUES ('2025-03-10', 6, 6, '2025-03-12', 'Entrega das chaves');

INSERT INTO envolve VALUES ('2025-03-05', 1, 7, '2025-03-05', 'Visita');
INSERT INTO envolve VALUES ('2025-03-07', 2, 7, '2025-03-12', 'Negociação');
INSERT INTO envolve VALUES ('2025-03-14', 3, 7, '2025-03-18', 'Documentação conferida');
INSERT INTO envolve VALUES ('2025-03-20', 4, 7, '2025-03-20', 'Pagamento efetuado');
INSERT INTO envolve VALUES ('2025-03-22', 5, 7, '2025-03-22', 'Transferência registrada');
INSERT INTO envolve VALUES ('2025-03-25', 6, 7, '2025-03-27', 'Entrega das chaves');

INSERT INTO envolve VALUES ('2025-04-01', 1, 8, '2025-04-01', 'Visita do cliente');
INSERT INTO envolve VALUES ('2025-04-03', 2, 8, '2025-04-08', 'Negociação acordada');
INSERT INTO envolve VALUES ('2025-04-10', 3, 8, '2025-04-15', 'Documentos assinados');
INSERT INTO envolve VALUES ('2025-04-18', 4, 8, '2025-04-18', 'Pagamento confirmado');
INSERT INTO envolve VALUES ('2025-04-20', 5, 8, '2025-04-20', 'Transferência concluída');
INSERT INTO envolve VALUES ('2025-04-22', 6, 8, '2025-04-25', 'Entrega das chaves');

INSERT INTO envolve VALUES ('2025-05-01', 1, 9, '2025-05-01', 'Visita inicial');
INSERT INTO envolve VALUES ('2025-05-03', 2, 9, '2025-05-08', 'Negociação e proposta');
INSERT INTO envolve VALUES ('2025-05-10', 3, 9, '2025-05-14', 'Documentação enviada');
INSERT INTO envolve VALUES ('2025-05-16', 4, 9, '2025-05-16', 'Pagamento realizado');
INSERT INTO envolve VALUES ('2025-05-18', 5, 9, '2025-05-18', 'Transferência registrada');
INSERT INTO envolve VALUES ('2025-05-20', 6, 9, '2025-05-22', 'Entrega das chaves');

INSERT INTO envolve VALUES ('2025-06-01', 1, 10, '2025-06-01', 'Visita');
INSERT INTO envolve VALUES ('2025-06-03', 2, 10, '2025-06-08', 'Negociação');
INSERT INTO envolve VALUES ('2025-06-10', 3, 10, '2025-06-15', 'Documentação completa');
INSERT INTO envolve VALUES ('2025-06-17', 4, 10, '2025-06-17', 'Pagamento efetuado');
INSERT INTO envolve VALUES ('2025-06-19', 5, 10, '2025-06-19', 'Transferência concluída');
INSERT INTO envolve VALUES ('2025-06-21', 6, 10, '2025-06-23', 'Entrega das chaves');