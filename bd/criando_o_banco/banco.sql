create table farmaceutico (
	idFarmaceutico INT NOT NULL,
	primary key(idFarmaceutico)
);

create table unidades (
	idUnidades INT NOT NULL,
	nome VARCHAR(30) NOT NULL,
	endereco VARCHAR(50) NOT NULL,
	telefone VARCHAR(11) NOT NULL,
    Farmaceutico_idFarmaceuticos INT NOT NULL,
	PRIMARY KEY(idUnidades),
	CONSTRAINT fk_Unidades_Farmaceutico1
		FOREIGN KEY (Farmaceutico_idFarmaceuticos) REFERENCES farmaceutico(idFarmaceuticos)
);

create table laboratorio (
	idLabot INT NOT NULL,
	codigo INT NOT NULL,
	nome VARCHAR(30) NOT NULL,
	PRIMARY KEY(idLabot)
);

create table medico (
	idMedico INT NOT NULL,
	cpf VARCHAR(11) NOT NULL,
	nome VARCHAR(40) NOT NULL,
	crm VARCHAR(30) NOT NULL,
	especialidade VARCHAR(45) NOT NULL,
	anos_de_experiencia INT NOT NULL,
	PRIMARY KEY(idMedico)
);

create table cliente (
	idCliente INT NOT NULL,
	cpf VARCHAR(11) NOT NULL,
	nome VARCHAR(45) NOT NULL,
	endereco VARCHAR(45) NOT NULL,
	sexo VARCHAR(1) NOT NULL,
	idade INT NOT NULL,
	medicamento_idMedicamento INT NOT NULL,
	
    
	PRIMARY KEY(idCliente, medicamento_idMedicamento)
);

create table prescricao (
	medico_idMedicamento INT NOT NULL,
	data DATETIME NOT NULL,
	quantidade INT NOT NULL,
	medicamento_idMedicamento INT NOT NULL,
	cliente_idCliente INT NOT NULL,
	cliente_medicamento__idMedicamento INT NOT NULL,

	primary key(medico_idMedico, medicamento_idMedicamento, cliente_idCliente, cliente_medicamento__idMedicamento),
	constraint fk_Paciente_has_Medico_Medico1
	foreign key(medico_idMedico)
	references medico(idMedico),
	constraint fk_prescricao_cliente1
	foreign key(cliente_idCliente, cliente_medicamento__idMedicamento)
	references cliente(idCliente, medicamento_idMedicamento)
);

create table medicamento (
	idMedicamento INT NOT NULL,
    preco DOUBLE NOT NULL,
    nome VARCHAR(45) NOT NULL,
    formula VARCHAR(45) NOT NULL,
	laboratorio_idLabot INT NOT NULL,
	prescricao_medico_idMedico INT NOT NULL,
	prescricao_medicamento_idMedicamento INT NOT NULL,
	prescricao_cliente_idCliente INT NOT NULL,
	prescricao_cliente_medicamento_idMedicamento INT NOT NULL,
	PRIMARY KEY (idMedicamento),
	CONSTRAINT FK_medicamento_laboratorio
		FOREIGN KEY (idLabot) REFERENCES laboratorio (idLabot),
	CONSTRAINT FK_medicamento_prescricao
		FOREIGN KEY (prescricao_Medico_idMedico, prescricao_Medicamento_idMedicamento , prescricao_Cliente_idCliente, prescricao_Cliente_Medicamento_idMedicamento) REFERENCES prescricao (Medico_idMedico , Medicamento_idMedicamento , Cliente_idCliente, Cliente_Medicamento_idMedicamento)
);      
    
create table contato (
	idContato INT NOT NULL,
    telefone VARCHAR(45),
    emails VARCHAR(45),
    laboratorio_idLabot INT NOT NULL,
	PRIMARY KEY (idContato),
    CONSTRAINT FK_contato_laboratorio
		FOREIGN KEY (Laboratorio_idLabot) REFERENCES laboratorio(idLabot)
);

create table contrato(
	idContrato INT NOT NULL,
	data_inicial DATETIME NOT NULL,
	data_final DATETIME NOT NULL,
	valor DOUBLE NOT NULL,
	texto_contrato VARCHAR(200) NULL,
	medicamento_idMedicamento INT NOT NULL,
	PRIMARY KEY (idContrato, medicamento_idMedicamento),
	CONSTRAINT fk_contrato_medicamento
		FOREIGN KEY (medicamento_idMedicamento) REFERENCES medicamento (idMedicamento)
);

create table supervisor(
	idSupervisor INT NOT NULL,
	Contrato_idContrato INT NOT NULL,
	PRIMARY KEY (idSupervisor, contrato_idContrato),
	CONSTRAINT fk_cupervisor_contrato
		FOREIGN KEY (Contrato_idContrato) REFERENCES Contrato (idContrato)
);

create table Unidade_Has_Medicamentos(
	unidades_idUnidades INT NOT NULL,
	medicamento_idMedicamento INT NOT NULL,
	PRIMARY KEY (unidades_idUnidades, medicamento_idMedicamento)
);
