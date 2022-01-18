USE bdLojaRoupas

INSERT INTO tbFabricante(nomeFabricante)
VALUES ('Malwee')
     , ('Marisol')
	 , ('Cia da Malha')
SELECT * FROM tbFabricante

INSERT INTO tbFuncionario(nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
VALUES ('João Santana', 20, '03/11/2020', 1500)
     , ('Raquel Torres', 25, '15/06/2016', 1800)
SELECT * FROM tbFuncionario

INSERT INTO tbVendedor(nomeVendedor)
VALUES ('João Santana')
     , ('Raquel Torres')
SELECT * FROM tbVendedor

INSERT INTO tbCliente(nomeCliente, idadeCliente)
VALUES ('Gustavo Oliveira Antunes', 16)
     , ('Tiago Alves', 19)
	 , ('Aline Vieira', 18)
	 , ('Juan Jarbas', 23)
	 , ('Alison Isidro', 35)
SELECT * FROM tbCliente

INSERT INTO tbVenda(dataVenda, codCliente, codVendedor, totalVenda)
VALUES ('20/09/2021', 1, 1, 200.00)
     , ('23/09/2021', 2, 2, 50.00)
	 , ('30/08/2021', 3, 1, 79.00)
	 , ('10/09/2021', 4, 2, 100.90)
	 , ('15/03/2021', 5, 1, 70.00)
SELECT * FROM tbVenda

INSERT INTO tbProduto(nomeProduto, precoProduto, dataEntradaProduto, estoqueProduto, codFuncionario, codFabricante)
VALUES ('Bermuda', 40.99, '15/03/2021', 45, 1, 1)
     , ('Calça Jeans', 80.99, '19/05/2021', 55, 2, 1)
	 , ('Shorts', 35.90, '30/07/2021', 50, 1, 1)
	 , ('Cropped', 40.00, '01/07/2021', 30, 2, 2)
	 , ('Macaquinho', 69.99, '09/06/2021', 25, 1, 2)
	 , ('Moletom', 120.90, '10/07/2021', 30, 2, 2)
	 , ('Vestido', 50.00, '13/08/2021', 27, 1, 3)
	 , ('Saia', 34.99, '31/08/2021', 19, 2, 3)
	 , ('T-shirt', 45.90, '07/04/2021', 20, 1, 3)
SELECT * FROM tbProduto

INSERT INTO tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
VALUES (1, 1, 2, 200.00)
     , (1, 2, 2, 200.00)
	 , (2, 3, 2, 50.00)
	 , (2, 4, 2, 50.00)
	 , (3, 5, 2, 79.00)
	 , (3, 6, 2, 79.00)
	 , (4, 7, 2, 100.00)
	 , (5, 8, 2, 70.00)
SELECT * FROM tbItensVenda