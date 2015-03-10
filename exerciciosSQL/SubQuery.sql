--Sub Query

-- Para atender � algum crit�rio anterior a agrega��o


--N�o � fun��o de agrega��o. 

--A query fica din�mica por n�o ser um valor fixo.


SELECT SalesOrderID, ProductID, UnitPrice, OrderQty
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN -- (75123, 75121, 75122, 75120, 75119)
	(SELECT TOP 5 SalesOrderID
	FROM Sales.SalesOrderHeader
	ORDER BY SalesOrderID DESC
	);
	--75123

	 
