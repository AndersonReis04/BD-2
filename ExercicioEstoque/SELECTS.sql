
USE dbEstoque;
GO


/* Exerc�cio 1 */
SELECT tbProduto.descricaoProduto, tbFabricante.nomeFabricante
FROM tbProduto
	INNER JOIN tbFabricante 
		ON tbProduto.codFabricante = tbFabricante.codFabricante;

/* Exerc�cio 2 */
SELECT tbProduto.descricaoProduto, tbFornecedor.nomeFornecedor
FROM tbProduto
	INNER JOIN tbFornecedor	
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor;

/* Exerc�cio 3 */
SELECT SUM(tbProduto.quantidadeProduto) as Valor_Produtos, tbFabricante.nomeFabricante  
	FROM tbProduto 
		INNER JOIN tbFabricante 
			ON tbProduto.codFabricante = tbFabricante.codFabricante
	GROUP BY tbFabricante.nomeFabricante
	ORDER BY Valor_Produtos DESC;

/* Exerc�cio 4 */
SELECT SUM(tbVenda.valorTotalVenda) as Valor_Total, tbCliente.nomeCliente 
	FROM tbVenda
		INNER JOIN tbCliente 
			ON tbVenda.codCliente = tbCliente.codCliente
	GROUP BY tbCliente.nomeCliente
	ORDER BY Valor_Total DESC;

/* Exerc�cio 5 */ 
SELECT AVG(tbProduto.valorProduto) as Valor_Media, tbFornecedor.nomeFornecedor 
	FROM tbProduto
		INNER JOIN tbFornecedor 
			ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
	GROUP BY tbFornecedor.nomeFornecedor
	ORDER BY Valor_Media DESC;

/* Exerc�cio 6 */ 
SELECT SUM(tbVenda.valorTotalVenda) as Valor_Total_Venda, tbCliente.nomeCliente as nomes_Cliente
	FROM tbVenda
		INNER JOIN tbCliente 
			ON tbVenda.codCliente = tbCliente.codCliente	
	GROUP BY tbCliente.nomeCliente
	ORDER BY nomes_Cliente ASC;

/* Exerc�cio 7 */
SELECT SUM(tbProduto.valorProduto) as Valor_Total_Produtos, tbFabricante.nomeFabricante as fabricante
	FROM tbProduto
		INNER JOIN tbFabricante 
			ON tbProduto.codFabricante = tbFabricante.codFabricante
	GROUP BY tbFabricante.nomeFabricante
	ORDER BY Valor_Total_Produtos DESC;

/* Exerc�cio 8 */
SELECT AVG(tbProduto.valorProduto) as Valor_Total_Produtos, tbFornecedor.nomeFornecedor as fornecedor
	FROM tbProduto
		INNER JOIN tbFornecedor 
			ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
	GROUP BY tbFornecedor.nomeFornecedor
	ORDER BY Valor_Total_Produtos DESC;

/* Exerc�cio 9 */
SELECT AVG(tbProduto.valorProduto) as Valor_Total_Produtos, tbFornecedor.nomeFornecedor as fornecedor
	FROM tbProduto
		INNER JOIN tbFornecedor 
			ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
	GROUP BY tbFornecedor.nomeFornecedor
	ORDER BY Valor_Total_Produtos DESC;
