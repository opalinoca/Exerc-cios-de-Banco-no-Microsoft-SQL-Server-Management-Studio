CREATE DATABASE bdEstoque

USE bdEstoque

CREATE TABLE tbCliente(
    codCliente INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, nomeCliente VARCHAR(60) NOT NULL
	, cpfCliente VARCHAR(16) NOT NULL
	, emailCliente VARCHAR(70) NOT NULL
	, sexoCliente VARCHAR (6) NOT NULL
	, dataNascimentoCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbFabricante(
    codFabricante INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, nomeFabricante VARCHAR(60) NOT NULL
)

CREATE TABLE tbFornecedor(
    codFornecedor INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, nomeFornecedor VARCHAR(60) NOT NULL
	, contatoFornecedor VARCHAR(30) NOT NULL
)

CREATE TABLE tbProduto(
   codProduto INT NOT NULL PRIMARY KEY IDENTITY(1,1)
   , descricaoProduto VARCHAR(80) NOT NULL
   , valorProduto SMALLMONEY NOT NULL
   , quantidadeProduto INT NOT NULL
   , codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
   , codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor)
)

CREATE TABLE tbVenda(
   codVenda INT NOT NULL PRIMARY KEY IDENTITY(1,1)
   , dataVenda SMALLDATETIME NOT NULL
   , valorTotalVenda SMALLMONEY NOT NULL 
   , codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
)

CREATE TABLE tbItensVendas(
    codItensVendas INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	, codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
	, codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
	, quantidadeItensVendas INTEGER NOT NULL
	, subtotalItensVendas SMALLMONEY NOT NULL 
)