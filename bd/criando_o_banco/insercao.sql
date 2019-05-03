insert into unidades (idUnidades, nome, endereco, telefone) values (1, 'unidade1', 'rua dos bobos', '111111111');
insert into unidades (idUnidades, nome, endereco, telefone) values (2, 'unidade2', 'rua que nao e dos bobos', '2222222222');
insert into unidades (idUnidades, nome, endereco, telefone) values (3, 'unidade3', 'rua A', '2222222222');
insert into unidades (idUnidades, nome, endereco, telefone) values (4, 'unidade4', 'rua B', '3333333333');
insert into unidades (idUnidades, nome, endereco, telefone) values (5, 'unidade5', 'rua C', '4444444444');
insert into unidades (idUnidades, nome, endereco) values (6, 'unidade6', 'rua D');
insert into unidades (idUnidades, nome, endereco) values (7, 'unidade7', 'rua E');
insert into unidades (idUnidades, nome, endereco) values (8, 'unidade8', 'rua F');
insert into unidades (idUnidades, nome, endereco) values (9, 'unidade9', 'rua G');
insert into unidades (idUnidades, nome, endereco) values (10, 'unidade10', 'rua H');

insert into funcionario (nome, cpf) values ('Angelo', '111111111');
insert into funcionario (nome, cpf) values ('Yamey', '2222222222');
insert into funcionario (nome, cpf) values ('Jose', '333333333'); 
insert into funcionario (nome, cpf) values ('Felipe', '444444444'); 
insert into funcionario (nome, cpf) values ('Bruno', '555555555'); 
insert into funcionario (nome, cpf) values ('Raquel', '6666666666'); 
insert into funcionario (nome, cpf) values ('Karol', '77777777777');
insert into funcionario (nome, cpf) values ('Julio', '88888888888'); 
insert into funcionario (nome, cpf) values ('Vivian', '9999999999');  
insert into funcionario (nome, cpf) values ('Josefina', '1010101010');
insert into funcionario (nome, cpf) values ('Andre', '12345678910');
insert into funcionario (nome, cpf) values ('Rubens', '9876543210');
insert into funcionario (nome, cpf) values ('Andrea', '258369741');
insert into funcionario (nome, cpf) values ('Enzo', '147258369');
insert into funcionario (nome, cpf) values ('Valentina', '938217456');

insert into supervisor (nome, cpf) values ('111111111');
insert into supervisor (nome, cpf) values ('2222222222');
insert into supervisor (nome, cpf) values ('333333333'); 
insert into supervisor (nome, cpf) values ('444444444'); 
insert into supervisor (nome, cpf) values ('555555555');

insert into farmaceutico (nome, cpf) values ('Raquel', '6666666666'); 
insert into farmaceutico (nome, cpf) values ('Karol', '77777777777');
insert into farmaceutico (nome, cpf) values ('Julio', '88888888888'); 
insert into farmaceutico (nome, cpf) values ('Vivian', '9999999999');  
insert into farmaceutico (nome, cpf) values ('Josefina', '10101010');

insert into gerente (cpf) values ('12345678910');
insert into gerente (cpf) values ('9876543210');
insert into gerente (cpf) values ('258369741');
insert into gerente (cpf) values ('147258369');
insert into gerente (cpf) values ('938217456');

insert into laboratorio (idLabot, codigo, nome, endereco) values (1, 123, 'lab1', 'Rua lab1');
insert into laboratorio (idLabot, codigo, nome, endereco) values (2, 456, 'lab2', 'Rua lab2');
insert into laboratorio (idLabot, codigo, nome, endereco) values (3, 789, 'lab3', 'Rua lab3');
insert into laboratorio (idLabot, codigo, nome) values (4, 1, 'lab4');
insert into laboratorio (idLabot, codigo, nome) values (5, 2, 'lab5');
insert into laboratorio (idLabot, codigo, nome) values (6, 3, 'lab6');

insert into contato (idContato, telefone, emails) values (1, '11111111', 'email@email1.com');
insert into contato (idContato, telefone, emails) values (2, '22222222', 'email@email2.com');
insert into contato (idContato, telefone, emails) values (3, '33333333', 'email@email3.com');
insert into contato (idContato, telefone) values (4, '44444444');
insert into contato (idContato, telefone) values (5, '55555555');
insert into contato (idContato, telefone) values (6, '66666666');

insert into cliente (idCliente, cpf, nome, endereco, sexo, idade) values ('11111111', 'Josefina', 'rua A', 'F', 20);
insert into cliente (idCliente, cpf, nome, endereco, sexo, idade) values ('22222222', 'Karol', 'rua B', 'F', 19);
insert into cliente (idCliente, cpf, nome, endereco, sexo) values ('33333333', 'Bruna', 'Rua C', 'F');
insert into cliente (idCliente, cpf, nome, endereco ) values ('44444444', 'Bruno', 'Rua D');
insert into cliente (idCliente, cpf, nome) values ('555555555', 'Jose');

insert into prescricao (idPrescricao, data) values (1, '10/04/2019');
insert into prescricao (idPrescricao, data) values (2, '05/05/2019');
insert into prescricao (idPrescricao, data) values (3, '10/10/2018');
insert into prescricao (idPrescricao, data) values (4, '27/01/2019');
insert into prescricao (idPrescricao, data) values (5, '15/02/2019');
insert into prescricao (idPrescricao, data) values (6, '08/03/2019');

insert into prescricao_has_medicamento (quantidade) value (1);
insert into prescricao_has_medicamento (quantidade) value (5);
insert into prescricao_has_medicamento (quantidade) value (9);
insert into prescricao_has_medicamento (quantidade) value (13);
insert into prescricao_has_medicamento (quantidade) value (15);

insert into unidades_has_medicamento (preco) values (50.7);
insert into unidades_has_medicamento (preco) values (80.0);
insert into unidades_has_medicamento (preco) values (151.6);
insert into unidades_has_medicamento (preco) values (85.3);
insert into unidades_has_medicamento (preco) values (106.9);

insert into contrato (idContrato, data_inicial, data_final, valor, texto_contrato) values (1, '10/10/2018', '06/06/2019', 27.300, 'Contrato fechado!!');
insert into contrato (idContrato, data_inicial, data_final, valor, texto_contrato) values (2, '15/10/2018', '01/06/2019', 45.800, 'Contrato fechado, otimo negocio!!');
insert into contrato (idContrato, data_inicial, data_final, valor, texto_contrato) values (3, '20/12/2018', '19/12/2019', 45.800, 'Contrato fechado com sucesso!!');
insert into contrato (idContrato, data_inicial, data_final, valor) values (4, '15/03/2018', '16/10/2019', 10.500);
insert into contrato (idContrato, data_inicial, data_final, valor) values (5, '20/02/2017', '20/02/2019', 168.000);
insert into contrato (idContrato, data_inicial, data_final, valor) values (6, '05/02/2018', '05/05/2019', 78.000);

insert into medico (idMedico, cpf, nome, crm, especialidade, anos_de_experiencia) values (1, '1111111', 'Siqueira', '123456789', 'cirurgia plastica', 15);
insert into medico (idMedico, cpf, nome, crm, anos_de_experiencia) values (2, '2222222', 'Karolina', '987654321', 'Pediatra', 5);
insert into medico (idMedico, cpf, nome, crm, especialidade) values (3, '33333333', 'Bruno', '1111', 'Neurologista');
insert into medico (idMedico, cpf, nome, especialidade, anos_de_experiencia) values (4, '4444444', 'Bruna', 'Urologista', 7);	

insert into medicamento (idMedicamento, nome, formula) values (1, 'SupriA', 'Agua, sal e acucar');
insert into medicamento (idMedicamento, nome, formula) values (2, 'Dorflut', 'Agua, sal e mais acucar');
insert into medicamento (idMedicamento, nome) values (3, 'Geriflex');
insert into medicamento (idMedicamento, nome) values (4, 'dorimenflex');

insert into pagamentos (numeroParcela, valor_parcela, data_vencimento, data_pagamento, responsavel_autorizado) values (1, 250.0, '20/02/2019', '19/02/2019', '12345678910');
insert into pagamentos (numeroParcela, valor_parcela, data_vencimento, data_pagamento, responsavel_autorizado) values (2, 300.0, '01/10/2019', '20/09/2019', '12345678910');
insert into pagamentos (numeroParcela, valor_parcela, data_pagamento, responsavel_autorizado) values (3, 500.0, '15/08/2019', '147258369');
insert into pagamentos (numeroParcela, valor_parcela, data_pagamento, responsavel_autorizado) values (4, 350.0, '06/12/2019', '938217456');

insert into historico (idHistorico, nome, cpf, is_ativo) values (1, 'Andre', '12345678910', true);
insert into historico (idHistorico, cpf, is_ativo) values (2, '9876543210', true);
insert into historico (idHistorico, cpf, is_ativo) values (3, '88888888888', false);
insert into historico (idHistorico, cpf, is_ativo) values (4, '9999999999', false);
