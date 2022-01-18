CREATE DATABASE bdLojaRoupas

USE bdLojaRoupas

CREATE TABLE tbFabricante(
    codFabricante INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, nomeFabricante VARCHAR(30) NOT NULL
)

CREATE TABLE tbFuncionario(
    codFuncionario INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, nomeFuncionario VARCHAR(30) NOT NULL
	, idadeFuncionario TINYINT NOT NULL
	, dataAdmissao SMALLDATETIME NOT NULL
	, salarioFuncionario SMALLMONEY NOT NULL
)

CREATE TABLE tbVendedor(
    codVendedor INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, nomeVendedor VARCHAR(60) NOT NULL
)

CREATE TABLE tbCliente(
    codCliente INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, nomeCliente VARCHAR(60) NOT NULL
	, idadeCliente TINYINT NOT NULL
)

CREATE TABLE tbVenda(
    codVenda INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, dataVenda SMALLDATETIME NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
	, codVendedor INT FOREIGN KEY REFERENCES tbVendedor(codVendedor)
	, totalVenda SMALLMONEY NOT NULL
)

CREATE TABLE tbProduto(
    codProduto INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, nomeProduto VARCHAR(40) NOT NULL
	, precoProduto SMALLMONEY NOT NULL
	, dataEntradaProduto SMALLDATETIME NOT NULL
	, estoqueProduto INT NOT NULL
	, codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
	, codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
)

CREATE TABLE tbItensVenda(
    codItensVenda INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	, codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
	, quantidadeItens INT NOT NULL
	, subTotalItens SMALLMONEY NOT NULL
)