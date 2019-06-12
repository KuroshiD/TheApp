CREATE DATABASE siscom;

USE siscom;

CREATE TABLE Produtos (
  codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(50) NULL,
  embalagem VARCHAR(20) NULL,
  preco DECIMAL(10,2) NULL,
  qtde_estoque DECIMAL(10,2) NULL,
  categoria VARCHAR(20) NULL,
  PRIMARY KEY(codigo)
);

CREATE TABLE Clientes (
  idClientes INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cpf DECIMAL(11) NULL,
  dataNascimento DATE NULL,
  nome VARCHAR(60) NULL,
  endereco VARCHAR(50) NULL,
  bairro VARCHAR(40) NULL,
  cidade VARCHAR(40) NULL,
  estado CHAR(2) NULL,
  telefone VARCHAR(12) NULL,
  celular VARCHAR(12) NULL,
  email VARCHAR(50) NULL,
  PRIMARY KEY(idClientes)
);

CREATE TABLE Pedidos (
  idPedidos INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Produtos_codigo INTEGER UNSIGNED NOT NULL,
  Clientes_idClientes INTEGER UNSIGNED NOT NULL,
  dataPedido DATETIME NULL,
  valorPedido DECIMAL(10,2) NULL,
  situacao VARCHAR(8) NULL,
  PRIMARY KEY(idPedidos),
  FOREIGN KEY(Clientes_idClientes) REFERENCES Clientes(idClientes),
  FOREIGN KEY(Produtos_codigo) REFERENCES Produtos(codigo)
);


