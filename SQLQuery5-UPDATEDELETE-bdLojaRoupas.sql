USE bdLojaRoupas

UPDATE tbFabricante
SET nomeFabricante = 'Turma da Malha'
WHERE codFabricante = 3
SELECT * FROM tbFabricante

UPDATE tbVenda
SET totalVenda = totalVenda - (totalVenda * 10/100)
WHERE codCliente = 1
SELECT * FROM tbVenda

UPDATE tbProduto
SET precoProduto = precoProduto + (precoProduto * 20/100)
WHERE codFabricante = 1
SELECT * FROM tbProduto

UPDATE tbProduto
SET estoqueProduto = estoqueProduto - 10
WHERE codProduto = 3
SELECT * FROM tbProduto

DELETE FROM tbItensVenda
WHERE codItensVenda = 4
SELECT * FROM tbItensVenda

DELETE FROM tbItensVenda
WHERE codVenda = 3
SELECT * FROM tbItensVenda

DELETE FROM tbFabricante
WHERE codFabricante = 1
--Deu erro, pois o banco de dados não aceita apagar um atributo
--que tem conexão com outro em outra tb. Esse fabricante se conecta com a
--tbProduto na coluna codFabricante, por esse motivo o banco conflitou!