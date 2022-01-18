USE bdEstoque

-- Exercício 1
UPDATE tbProduto
SET valorProduto = valorProduto * 1.1
WHERE codFabricante= 1
SELECT * FROM tbProduto

-- Exercício 2
UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto * 0.07)
WHERE codFabricante = 2
SELECT * FROM tbProduto

-- Exercício 3
UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - 30
WHERE codFornecedor = 1
SELECT * FROM tbProduto

-- Exercício 4
UPDATE tbCliente
SET nomeCliente = 'Adriana Nogueira Silva Campos'
WHERE codCliente = 5
SELECT * FROM tbCliente

-- Exercício 5
UPDATE tbVenda
SET  valorTotalVenda = valorTotalVenda - (valorTotalVenda * 0.05)
WHERE dataVenda BETWEEN '01/02/2014' AND '28/02/2014'
SELECT * FROM tbVenda

-- Exercício 6
DELETE FROM tbItensVendas
WHERE codProduto = 5
SELECT * FROM tbItensVendas

-- Exercício 7
UPDATE tbCliente
SET sexoCliente = 'fem'
WHERE codCliente = 2 OR codCliente = 4 OR codCliente = 5
SELECT * FROM tbCliente

-- Exercício 8
UPDATE tbCliente
SET sexoCliente = 'masc'
WHERE codCliente = 1 OR codCliente = 3 OR codCliente = 6
SELECT * FROM tbCliente

-- Exercício 9
UPDATE tbCliente
SET emailCliente = 'asantana@ig.com.br'
WHERE nomeCliente = 'Armando José Santana'
SELECT * FROM tbCliente

-- Exercício 10
UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - (quantidadeProduto * 0.10)
WHERE codFabricante = 1
SELECT * FROM tbProduto

-- Exercício 11
UPDATE tbProduto
SET valorProduto = valorProduto * 1.05
WHERE descricaoProduto LIKE 'Amaciante%'
SELECT * FROM tbProduto

-- Exercício 12
UPDATE tbProduto
SET valorProduto = valorProduto * 1.1
WHERE  descricaoProduto LIKE '%Sadia'
SELECT * FROM tbProduto

-- Exercício 13
UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto * 0.10)
WHERE descricaoProduto LIKE '%Seda'
SELECT * FROM tbProduto

-- Exercício 14
DELETE FROM tbCliente
WHERE codCliente = 2
-- Ocorreu um erro, pois a cliente que está cadastrada na tbCliente se conecta com
-- a tbVenda através de duas compras em datas distintas, isso significa que o banco
-- não irá aceitar apagar um atributo que tem conexão com outros em outra tabela!
