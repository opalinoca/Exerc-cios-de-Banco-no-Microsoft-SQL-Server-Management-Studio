USE bdEstoque

-- Exerc�cio 1
UPDATE tbProduto
SET valorProduto = valorProduto * 1.1
WHERE codFabricante= 1
SELECT * FROM tbProduto

-- Exerc�cio 2
UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto * 0.07)
WHERE codFabricante = 2
SELECT * FROM tbProduto

-- Exerc�cio 3
UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - 30
WHERE codFornecedor = 1
SELECT * FROM tbProduto

-- Exerc�cio 4
UPDATE tbCliente
SET nomeCliente = 'Adriana Nogueira Silva Campos'
WHERE codCliente = 5
SELECT * FROM tbCliente

-- Exerc�cio 5
UPDATE tbVenda
SET  valorTotalVenda = valorTotalVenda - (valorTotalVenda * 0.05)
WHERE dataVenda BETWEEN '01/02/2014' AND '28/02/2014'
SELECT * FROM tbVenda

-- Exerc�cio 6
DELETE FROM tbItensVendas
WHERE codProduto = 5
SELECT * FROM tbItensVendas

-- Exerc�cio 7
UPDATE tbCliente
SET sexoCliente = 'fem'
WHERE codCliente = 2 OR codCliente = 4 OR codCliente = 5
SELECT * FROM tbCliente

-- Exerc�cio 8
UPDATE tbCliente
SET sexoCliente = 'masc'
WHERE codCliente = 1 OR codCliente = 3 OR codCliente = 6
SELECT * FROM tbCliente

-- Exerc�cio 9
UPDATE tbCliente
SET emailCliente = 'asantana@ig.com.br'
WHERE nomeCliente = 'Armando Jos� Santana'
SELECT * FROM tbCliente

-- Exerc�cio 10
UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - (quantidadeProduto * 0.10)
WHERE codFabricante = 1
SELECT * FROM tbProduto

-- Exerc�cio 11
UPDATE tbProduto
SET valorProduto = valorProduto * 1.05
WHERE descricaoProduto LIKE 'Amaciante%'
SELECT * FROM tbProduto

-- Exerc�cio 12
UPDATE tbProduto
SET valorProduto = valorProduto * 1.1
WHERE  descricaoProduto LIKE '%Sadia'
SELECT * FROM tbProduto

-- Exerc�cio 13
UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto * 0.10)
WHERE descricaoProduto LIKE '%Seda'
SELECT * FROM tbProduto

-- Exerc�cio 14
DELETE FROM tbCliente
WHERE codCliente = 2
-- Ocorreu um erro, pois a cliente que est� cadastrada na tbCliente se conecta com
-- a tbVenda atrav�s de duas compras em datas distintas, isso significa que o banco
-- n�o ir� aceitar apagar um atributo que tem conex�o com outros em outra tabela!
