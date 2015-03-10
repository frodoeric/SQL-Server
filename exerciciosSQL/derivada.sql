--Tabela derivada

SELECT TOP 5 * 

FROM 
(	SELECT YEAR(OrderDate) AS orderyear, CustomerID
	FROM Sales.SalesOrderHeader
	
) V