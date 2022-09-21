-- Criação do banco de dados

DROP DATABASE IF EXISTS `dio-mecanica`;

CREATE DATABASE `dio-mecanica`;

USE `dio-mecanica`;

-- Entidade/classe peca

DROP TABLE IF EXISTS peca;
CREATE TABLE peca (
	id_peca INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    marca VARCHAR(45),
    valor FLOAT
);

-- Entidade/classe servico

DROP TABLE IF EXISTS servico;
CREATE TABLE servico (
	id_servico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    descricao VARCHAR(255),
    tipo ENUM('CONSERTO','REVISAO') NOT NULL,
    valor FLOAT NOT NULL
);

-- Entidade/classe cliente

DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente (
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(45),
    cep CHAR(8) NOT NULL,
    logradouro VARCHAR(45) NOT NULL,
    numero INT,
    complemento VARCHAR(45),
    bairro VARCHAR(45) NOT NULL,
    municipio VARCHAR(45) NOT NULL,
    uf ENUM('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO',
			'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI',
			'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO') NOT NULL
    
);

-- Entidade/classe veiculo

DROP TABLE IF EXISTS veiculo;
CREATE TABLE veiculo (
	id_veiculo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(45) NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    ano_fabricacao INT NOT NULL,
    ano_modelo INT NOT NULL,
    placa CHAR(7) NOT NULL,
    id_cliente INT NOT NULL,
    CONSTRAINT fk_veiculo_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Entidade/classe equipe

DROP TABLE IF EXISTS equipe;
CREATE TABLE equipe (
	id_equipe INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);

-- Entidade/classe mecanico

DROP TABLE IF EXISTS mecanico;
CREATE TABLE  mecanico (
	id_mecanico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigo CHAR(6) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    id_equipe INT NOT NULL,
    CONSTRAINT fk_mecanico_id_equipe FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe) 
);

-- Entidade/classe ordem de servico

DROP TABLE IF EXISTS ordem;
CREATE TABLE ordem (
	id_ordem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_emissao DATE NOT NULL,
    data_conclusao DATE,
    status_ordem ENUM('AGUARDANDO_APROVACAO', 'AGURADANDO_EQUIPE', 'AGUARDANDO_PECAS', 'EM_EXECUCAO', 'PARALISADA', 'CONCLUIDA', 'ACEITA'),
    valor FLOAT NOT NULL,
    id_cliente INT NOT NULL,
    id_veiculo INT NOT NULL,
    id_equipe INT,
    CONSTRAINT fk_os_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT fk_os_id_veiculo FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    CONSTRAINT fk_os_id_equipe FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe)
);

-- Relacionamento servico por ordem

DROP TABLE IF EXISTS servico_por_ordem;
CREATE TABLE servico_por_ordem(
	id_ordem INT NOT NULL,
	id_servico INT NOT NULL,
    CONSTRAINT fk_servico_ordem_id_ordem FOREIGN KEY (id_ordem) REFERENCES ordem(id_ordem),
    CONSTRAINT fk_servico_ordem_id_servico FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

-- Relacionamento peca por ordem

DROP TABLE IF EXISTS peca_por_ordem;
CREATE TABLE peca_por_ordem (
	id_ordem INT NOT NULL,
    id_peca INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    CONSTRAINT fk_peca_ordem_id_ordem FOREIGN KEY (id_ordem) REFERENCES ordem(id_ordem),
    CONSTRAINT fk_peca_ordem_id_peca FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);

-- Relacionamento mecaninco-servico (especialidade) 

DROP TABLE IF EXISTS especialidade;
CREATE TABLE especialidade (
	id_mecanico INT NOT NULL,
	id_servico INT NOT NULL,
    CONSTRAINT fk_especialidade_id_mecanico FOREIGN KEY (id_mecanico) REFERENCES mecanico(id_mecanico),
    CONSTRAINT fk_especialidade_id_servico FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);
