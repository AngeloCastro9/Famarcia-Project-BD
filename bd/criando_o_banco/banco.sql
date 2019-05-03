use sicapharma;

CREATE TABLE farmaceutico (
  nome VARCHAR(45) ,
  cpf VARCHAR(45) NOT NULL,
  PRIMARY KEY (cpf)
);


CREATE TABLE  Gerente (
  nome VARCHAR(45) ,
  cpf VARCHAR(45) NOT NULL,
  PRIMARY KEY (cpf)
);


CREATE TABLE  Unidades (
  idUnidades INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  endereco VARCHAR(45) NOT NULL,
  telefone VARCHAR(45) ,
  farmaceutico_cpf VARCHAR(45) NOT NULL,
  Gerente_cpf VARCHAR(45) NOT NULL,
  PRIMARY KEY (idUnidades, farmaceutico_cpf, Gerente_cpf),
  CONSTRAINT fk_Unidades_farmaceutico1
    FOREIGN KEY (farmaceutico_cpf) REFERENCES farmaceutico (cpf),
    
  CONSTRAINT fk_Unidades_Gerente1
    FOREIGN KEY (Gerente_cpf) REFERENCES Gerente (cpf)
);

CREATE TABLE  Laboratorio (
  idLabot INT NOT NULL,
  codigo INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  endereco VARCHAR(45) ,
  PRIMARY KEY (idLabot)
);


CREATE TABLE Medicamento (
  idMedicamento INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  formula VARCHAR(45) ,
  Laboratorio_idLabot INT NOT NULL,
  PRIMARY KEY (idMedicamento),
  CONSTRAINT fk_Medicamento_Laboratorio1
    FOREIGN KEY (Laboratorio_idLabot) REFERENCES Laboratorio (idLabot)
);


CREATE TABLE Contato (
  idContato INT NOT NULL,
  telefone VARCHAR(45) ,
  emails VARCHAR(45) ,
  Laboratorio_idLabot INT NOT NULL,
  Contato_idContato INT NOT NULL,
  PRIMARY KEY (idContato),
  CONSTRAINT fk_Contato_Laboratorio1
    FOREIGN KEY (Laboratorio_idLabot) REFERENCES Laboratorio (idLabot),

  CONSTRAINT fk_Contato_Contato1
    FOREIGN KEY (Contato_idContato) REFERENCES Contato (idContato)
);



CREATE TABLE Cliente (
  idCliente INT NOT NULL,
  cpf VARCHAR(45) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  endereco VARCHAR(45) ,
  sexo VARCHAR(45) ,
  idade INT NULL,
  PRIMARY KEY (idCliente)
);


CREATE TABLE Medico (
  idMedico INT NOT NULL,
  cpf VARCHAR(45) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  crm VARCHAR(45) ,
  especialidade VARCHAR(45) ,
  anos_de_experiencia INT NULL,
  PRIMARY KEY (idMedico)
);


CREATE TABLE prescricao (
  Medico_idMedico INT NOT NULL,
  data VARCHAR(12) NOT NULL,
  Cliente_idCliente INT NOT NULL,
  idPrescricao INT NOT NULL,
  PRIMARY KEY (idPrescricao),
  
  CONSTRAINT fk_Paciente_has_Medico_Medico1
    FOREIGN KEY (Medico_idMedico) REFERENCES Medico (idMedico),
  CONSTRAINT fk_prescricao_Cliente1
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente (idCliente)
);


CREATE TABLE Contrato (
  idContrato INT NOT NULL,
  data_inicial VARCHAR(15) NOT NULL,
  data_final VARCHAR(15) NOT NULL,
  valor DOUBLE NOT NULL,
  texto_contrato VARCHAR(200) ,
  Medicamento_idMedicamento INT NOT NULL,
  PRIMARY KEY (idContrato, Medicamento_idMedicamento),

  CONSTRAINT fk_Contrato_Medicamento1
    FOREIGN KEY (Medicamento_idMedicamento) REFERENCES Medicamento (idMedicamento)
);


CREATE TABLE Supervisor (
  nome VARCHAR(45) ,
  cpf VARCHAR(45) NOT NULL,
  PRIMARY KEY (cpf)
);


CREATE TABLE Unidades_has_Medicamento (
  Unidades_idUnidades INT NOT NULL,
  Medicamento_idMedicamento INT NOT NULL,
  preco DOUBLE NOT NULL,
  PRIMARY KEY (Unidades_idUnidades, Medicamento_idMedicamento),
  
  CONSTRAINT fk_Unidades_has_Medicamento_Unidades1
    FOREIGN KEY (Unidades_idUnidades) REFERENCES Unidades (idUnidades),
  CONSTRAINT fk_Unidades_has_Medicamento_Medicamento1
    FOREIGN KEY (Medicamento_idMedicamento) REFERENCES Medicamento (idMedicamento)
);


CREATE TABLE Funcionario (
  nome VARCHAR(45) ,
  cpf VARCHAR(45) NOT NULL,
  farmaceutico_cpf VARCHAR(45) NOT NULL,
  Supervisor_cpf VARCHAR(45) NOT NULL,
  Gerente_cpf VARCHAR(45) NOT NULL,
  PRIMARY KEY (farmaceutico_cpf, cpf, Supervisor_cpf, Gerente_cpf),
  
  CONSTRAINT fk_Funcionario_farmaceutico1
    FOREIGN KEY (farmaceutico_cpf) REFERENCES farmaceutico (cpf),
    
  CONSTRAINT fk_Funcionario_Supervisor1
    FOREIGN KEY (Supervisor_cpf) REFERENCES Supervisor (cpf),
    
  CONSTRAINT fk_Funcionario_Gerente1
    FOREIGN KEY (Gerente_cpf) REFERENCES Gerente (cpf)
);


CREATE TABLE prescricao_has_Medicamento (
  Medicamento_idMedicamento INT NOT NULL,
  quantidade INT NOT NULL,
  prescricao_idPrescricao INT NOT NULL,
  PRIMARY KEY (Medicamento_idMedicamento, prescricao_idPrescricao),
  CONSTRAINT fk_prescricao_has_Medicamento_Medicamento1
    FOREIGN KEY (Medicamento_idMedicamento) REFERENCES Medicamento (idMedicamento),
  CONSTRAINT fk_prescricao_has_Medicamento_prescricao1
    FOREIGN KEY (prescricao_idPrescricao) REFERENCES prescricao (idPrescricao)
);


CREATE TABLE historico (
  idhistorico INT NOT NULL,
  Supervisor_cpf VARCHAR(45) NOT NULL,
  Contrato_idContrato INT NOT NULL,
  Contrato_Medicamento_idMedicamento INT NOT NULL,
  nome VARCHAR(45) ,
  cpf VARCHAR(45) NOT NULL,
  is_ativo TINYINT NOT NULL,
  PRIMARY KEY (idhistorico, Supervisor_cpf, Contrato_idContrato, Contrato_Medicamento_idMedicamento),
  
  CONSTRAINT fk_historico_Supervisor1
    FOREIGN KEY (Supervisor_cpf)REFERENCES Supervisor (cpf),
    
  CONSTRAINT fk_historico_Contrato1
    FOREIGN KEY (Contrato_idContrato , Contrato_Medicamento_idMedicamento) REFERENCES Contrato (idContrato , Medicamento_idMedicamento)
);


CREATE TABLE Pagamentos (
  numeroParcela INT NOT NULL,
  valor_parcela DOUBLE NOT NULL,
  data_vencimento VARCHAR(12) ,
  data_pagamento VARCHAR(12) NOT NULL,
  responsavel_autorizado VARCHAR(45) NOT NULL,
  Contrato_idContrato INT NOT NULL,
  Contrato_Medicamento_idMedicamento INT NOT NULL,
  Gerente_cpf VARCHAR(45) NOT NULL,
  PRIMARY KEY (numeroParcela, Contrato_idContrato, Contrato_Medicamento_idMedicamento, Gerente_cpf),

  CONSTRAINT fk_Pagamentos_Contrato1
    FOREIGN KEY (Contrato_idContrato , Contrato_Medicamento_idMedicamento) REFERENCES Contrato (idContrato , Medicamento_idMedicamento),
  CONSTRAINT fk_Pagamentos_Gerente1
    FOREIGN KEY (Gerente_cpf) REFERENCES Gerente (cpf)
);

