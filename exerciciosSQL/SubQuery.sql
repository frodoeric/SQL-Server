--Sub Query

-- Para atender à algum critério anterior a agregação


--Não é função de agregação. 

--A query fica dinâmica por não ser um valor fixo.


SELECT SalesOrderID, ProductID, UnitPrice, OrderQty
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN -- (75123, 75121, 75122, 75120, 75119)
	(SELECT TOP 5 SalesOrderID
	FROM Sales.SalesOrderHeader
	ORDER BY SalesOrderID DESC
	);
	--75123

	 
