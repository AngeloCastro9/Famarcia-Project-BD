
insert into Supervisor (cpf) values ('111111111');
insert into Supervisor (cpf) values ('2222222222');
insert into Supervisor (cpf) values ('333333333'); 
insert into Supervisor (cpf) values ('444444444'); 
insert into Supervisor (cpf) values ('555555555');

insert into farmaceutico (nome, cpf) values ('Raquel', '6666666666'); 
insert into farmaceutico (nome, cpf) values ('Karol', '77777777777');
insert into farmaceutico (nome, cpf) values ('Julio', '88888888888'); 
insert into farmaceutico (nome, cpf) values ('Vivian', '9999999999'); 
insert into farmaceutico (nome, cpf) values ('Ziralda', '3161656');  
insert into farmaceutico (nome, cpf) values ('Pedro', '62526161');  

insert into Gerente (cpf) values ('12345678910');
insert into Gerente (cpf) values ('9876543210');
insert into Gerente (cpf) values ('258369741');
insert into Gerente (cpf) values ('147258369');
insert into Gerente (cpf) values ('225498');
insert into Gerente (cpf) values ('16661');

insert into Unidades (idUnidades, nome, endereco, telefone, farmaceutico_cpf, Gerente_cpf) values (1, 'unidade1', 'rua dos bobos', '1324255', '6666666666', '12345678910');
insert into Unidades (idUnidades, nome, endereco, telefone, farmaceutico_cpf, Gerente_cpf) values (2, 'unidade2', 'rua que nao e dos bobos', '2589625', '77777777777', '9876543210');
insert into Unidades (idUnidades, nome, endereco, telefone, farmaceutico_cpf, Gerente_cpf) values (3, 'unidade3', 'rua A', '515515', '88888888888', '258369741');
insert into Unidades (idUnidades, nome, endereco, farmaceutico_cpf, Gerente_cpf) values (4, 'unidade4', 'rua B', '9999999999', '147258369');
insert into Unidades (idUnidades, nome, endereco, farmaceutico_cpf, Gerente_cpf) values (5, 'unidade5', 'rua C', '3161656', '225498');
insert into Unidades (idUnidades, nome, endereco, farmaceutico_cpf, Gerente_cpf) values (6, 'unidade6', 'rua D', '62526161', '16661');

insert into Funcionario (nome, cpf, Supervisor_cpf) values ('Angelo', '111111111', '111111111');
insert into Funcionario (nome, cpf, Supervisor_cpf) values ('Yamey', '2222222222', '2222222222');
insert into Funcionario (nome, cpf, Supervisor_cpf) values ('Jose', '333333333', '333333333'); 
insert into Funcionario (nome, cpf, Supervisor_cpf) values ('Felipe', '444444444', '444444444'); 
insert into Funcionario (nome, cpf, Supervisor_cpf) values ('Bruno', '555555555', '555555555'); 
insert into Funcionario (nome, cpf, farmaceutico_cpf) values ('Raquel', '6666666666', '6666666666'); 
insert into Funcionario (nome, cpf, farmaceutico_cpf) values ('Karol', '77777777777', '77777777777');
insert into Funcionario (nome, cpf, farmaceutico_cpf) values ('Julio', '88888888888', '88888888888'); 
insert into Funcionario (nome, cpf, farmaceutico_cpf) values ('Vivian', '9999999999', '9999999999');
insert into Funcionario (nome, cpf, farmaceutico_cpf) values ('Ziralda', '3161656', '3161656');  
insert into Funcionario (nome, cpf, farmaceutico_cpf) values ('Pedro', '62526161', '62526161');  
insert into Funcionario (nome, cpf, Gerente_cpf) values ('Andre', '12345678910', '12345678910');
insert into Funcionario (nome, cpf, Gerente_cpf) values ('Rubens', '9876543210', '9876543210');
insert into Funcionario (nome, cpf, Gerente_cpf) values ('Andrea', '258369741', '258369741');
insert into Funcionario (nome, cpf, Gerente_cpf) values ('Enzo', '147258369', '147258369');
insert into Funcionario (nome, cpf, Gerente_cpf) values ('Alessandra', '225498', '225498');
insert into Funcionario (nome, cpf, Gerente_cpf) values ('Ana', '16661', '16661');

insert into Laboratorio (idLabot, codigo, nome, endereco) values (1, 123, 'lab1', 'Rua lab1');
insert into Laboratorio (idLabot, codigo, nome, endereco) values (2, 456, 'lab2', 'Rua lab2');
insert into Laboratorio (idLabot, codigo, nome, endereco) values (3, 789, 'lab3', 'Rua lab3');
insert into Laboratorio (idLabot, codigo, nome) values (4, 1, 'lab4');
insert into Laboratorio (idLabot, codigo, nome) values (5, 2, 'lab5');
insert into Laboratorio (idLabot, codigo, nome) values (6, 3, 'lab6');

insert into Contato (idContato, telefone, emails, Laboratorio_idLabot, Contato_idContato) values (1, '11111111', 'email@email1.com', 1, 1);
insert into Contato (idContato, telefone, emails, Laboratorio_idLabot, Contato_idContato) values (2, '22222222', 'email@email2.com', 2, 2);
insert into Contato (idContato, telefone, emails, Laboratorio_idLabot, Contato_idContato) values (3, '33333333', 'email@email3.com', 3, 3);
insert into Contato (idContato, telefone, Laboratorio_idLabot, Contato_idContato) values (4, '44444444', 4, 4);
insert into Contato (idContato, telefone, Laboratorio_idLabot, Contato_idContato) values (5, '55555555', 5, 5);
insert into Contato (idContato, telefone, Laboratorio_idLabot, Contato_idContato) values (6, '66666666', 6, 6);

insert into Cliente (idCliente, cpf, nome, endereco, sexo, idade) values (1, '11111111', 'Josefina', 'Fortaleza', 'F', 20);
insert into Cliente (idCliente, cpf, nome, endereco, sexo, idade) values (2, '22222222', 'Karol', 'Baturite', 'F', 19);
insert into Cliente (idCliente, cpf, nome, endereco, sexo) values (3, '33333333', 'Bruna', 'Itapipoca', 'F');
insert into Cliente (idCliente, cpf, nome, endereco ) values (4, '44444444', 'Bruno', 'Curitiba');
insert into Cliente (idCliente, cpf, nome, endereco) values (5, '555555555', 'Jose', 'Itapipoca');
insert into Cliente (idCliente, cpf, nome, endereco) values (6, '666666666', 'Maria', 'Fortaleza');

insert into Medico (idMedico, cpf, nome, crm, especialidade, anos_de_experiencia) values (1, '1111111', 'Siqueira', '123456789', 'cirurgia plastica', 15);
insert into Medico (idMedico, cpf, nome, crm, anos_de_experiencia) values (2, '2222222', 'Karolina', '987654321', 5);
insert into Medico (idMedico, cpf, nome, crm, especialidade) values (3, '33333333', 'Bruno', '1111', 'Neurologista');
insert into Medico (idMedico, cpf, nome, especialidade, anos_de_experiencia) values (4, '4444444', 'Bruna', 'Urologista', 7);
insert into Medico (idMedico, cpf, nome, especialidade, anos_de_experiencia) values (5, '5555555', 'Onelia', 'Oncologista', 2);
insert into Medico (idMedico, cpf, nome, especialidade, anos_de_experiencia) values (6, '6666666', 'Amelia', 'Ginecologista', 5);

insert into prescricao (idPrescricao, data, Medico_idMedico, Cliente_idCliente) values (1, '10/04/2019', 1, 1);
insert into prescricao (idPrescricao, data, Medico_idMedico, Cliente_idCliente) values (2, '05/05/2019', 2, 2);
insert into prescricao (idPrescricao, data, Medico_idMedico, Cliente_idCliente) values (3, '10/10/2018', 3, 3);
insert into prescricao (idPrescricao, data, Medico_idMedico, Cliente_idCliente) values (4, '27/01/2019', 4, 4);
insert into prescricao (idPrescricao, data, Medico_idMedico, Cliente_idCliente) values (5, '15/02/2019', 5, 5);
insert into prescricao (idPrescricao, data, Medico_idMedico, Cliente_idCliente) values (6, '08/03/2019', 6, 6);

insert into Medicamento (idMedicamento, nome, formula, Laboratorio_idLabot) values (1, 'SupriA', 'Agua, sal e acucar', 1);
insert into Medicamento (idMedicamento, nome, formula, Laboratorio_idLabot) values (2, 'Dorflut', 'Agua, sal e mais acucar', 2);
insert into Medicamento (idMedicamento, nome, Laboratorio_idLabot) values (3, 'Geriflex', 3);
insert into Medicamento (idMedicamento, nome, Laboratorio_idLabot) values (4, 'dorimenflex', 4);
insert into Medicamento (idMedicamento, nome, Laboratorio_idLabot) values (5, 'abajuriflex', 5);
insert into Medicamento (idMedicamento, nome, Laboratorio_idLabot) values (6, 'caderoflex', 6);

insert into prescricao_has_Medicamento (quantidade, Medicamento_idMedicamento, Prescricao_idPrescricao) values (1, 1, 1);
insert into prescricao_has_Medicamento (quantidade, Medicamento_idMedicamento, Prescricao_idPrescricao) values (5, 2, 2);
insert into prescricao_has_Medicamento (quantidade, Medicamento_idMedicamento, Prescricao_idPrescricao) values (9, 3, 3);
insert into prescricao_has_Medicamento (quantidade, Medicamento_idMedicamento, Prescricao_idPrescricao) values (13, 4, 4);
insert into prescricao_has_Medicamento (quantidade, Medicamento_idMedicamento, Prescricao_idPrescricao) values (15, 5, 5);
insert into prescricao_has_Medicamento (quantidade, Medicamento_idMedicamento, Prescricao_idPrescricao) values (3, 6, 6);

insert into Unidades_has_Medicamento (preco, Unidades_idUnidades, Medicamento_idMedicamento) values (50.7, 1, 1);
insert into Unidades_has_Medicamento (preco, Unidades_idUnidades, Medicamento_idMedicamento) values (80.0, 2, 2);
insert into Unidades_has_Medicamento (preco, Unidades_idUnidades, Medicamento_idMedicamento) values (151.6, 3, 3);
insert into Unidades_has_Medicamento (preco, Unidades_idUnidades, Medicamento_idMedicamento) values (85.3, 4, 4);
insert into Unidades_has_Medicamento (preco, Unidades_idUnidades, Medicamento_idMedicamento) values (106.9, 5, 5);
insert into Unidades_has_Medicamento (preco, Unidades_idUnidades, Medicamento_idMedicamento) values (106.9, 6, 6);

insert into Contrato (idContrato, data_inicial, data_final, valor, texto_contrato, Medicamento_idMedicamento) values (1, '10/10/2018', '06/06/2019', 27.300, 'Contrato fechado!!', 1);
insert into Contrato (idContrato, data_inicial, data_final, valor, texto_contrato, Medicamento_idMedicamento) values (2, '15/10/2018', '01/06/2019', 45.800, 'Contrato fechado, otimo negocio!!', 2);
insert into Contrato (idContrato, data_inicial, data_final, valor, texto_contrato, Medicamento_idMedicamento) values (3, '20/12/2018', '19/12/2019', 45.800, 'Contrato fechado com sucesso!!', 3);
insert into Contrato (idContrato, data_inicial, data_final, valor, Medicamento_idMedicamento) values (4, '15/03/2018', '16/10/2019', 10.500, 4);
insert into Contrato (idContrato, data_inicial, data_final, valor, Medicamento_idMedicamento) values (5, '20/02/2017', '20/02/2019', 168.000, 5);
insert into Contrato (idContrato, data_inicial, data_final, valor, Medicamento_idMedicamento) values (6, '05/02/2018', '05/05/2019', 78.000, 6);	

insert into Pagamentos (numeroParcela, valor_parcela, data_vencimento, data_pagamento, responsavel_autorizado, Contrato_idContrato, Contrato_Medicamento_idMedicamento, Gerente_cpf) values (1, 250.0, '20/02/2019', '19/02/2019', '12345678910', 1, 1, '12345678910');
insert into Pagamentos (numeroParcela, valor_parcela, data_vencimento, data_pagamento, responsavel_autorizado, Contrato_idContrato, Contrato_Medicamento_idMedicamento, Gerente_cpf) values (2, 300.0, '01/10/2019', '20/09/2019', '12345678910', 2, 2, '12345678910');
insert into Pagamentos (numeroParcela, valor_parcela, data_pagamento, responsavel_autorizado, Contrato_idContrato, Contrato_Medicamento_idMedicamento, Gerente_cpf) values (3, 500.0, '15/08/2019', '147258369', 3, 3, '147258369');
insert into Pagamentos (numeroParcela, valor_parcela, data_pagamento, responsavel_autorizado, Contrato_idContrato, Contrato_Medicamento_idMedicamento, Gerente_cpf) values (4, 350.0, '06/12/2019', '16661', 4, 4, '16661');

insert into historico (idHistorico, nome, cpf, is_ativo, Supervisor_cpf, Contrato_idContrato, Contrato_Medicamento_idMedicamento) values (1, 'Angelo', '111111111', true, '111111111', 1, 1);
insert into historico (idHistorico, nome, cpf, is_ativo, Supervisor_cpf, Contrato_idContrato, Contrato_Medicamento_idMedicamento) values (2, 'Yamey', '2222222222', false, '2222222222', 2, 2);
insert into historico (idHistorico, nome, cpf, is_ativo, Supervisor_cpf, Contrato_idContrato, Contrato_Medicamento_idMedicamento) values (3, 'Jose', '333333333', true, '333333333', 3, 3);
insert into historico (idHistorico, nome, cpf, is_ativo, Supervisor_cpf, Contrato_idContrato, Contrato_Medicamento_idMedicamento) values (4, 'Felipe', '444444444', false, '444444444', 4, 4);
insert into historico (idHistorico, nome, cpf, is_ativo, Supervisor_cpf, Contrato_idContrato, Contrato_Medicamento_idMedicamento) values (5, 'Bruno', '555555555', true, '555555555', 5, 5);