

SELECT
outerorders.CustomerID,
outerorders.SalesOrderID,
OrderDate
FROM Sales.SalesOrderHeader AS outerorders
WHERE OrderDate = 
	(SELECT MAX(OrderDate)
	 FROM Sales.SalesOrderHeader as innerorders
	 WHERE innerorders.CustomerID = outerorders.CustomerID)
GROUP BY outerorders.CustomerID, outerorders.SalesOrderID , OrderDate;






-- Os clientes que não existem na lista de compras

SELECT CustomerID FROM Sales.Customer c
WHERE NOT EXISTS (
SELECT CustomerID FROM Sales.SalesOrderHeader h
WHERE c.CustomerID = h.CustomerID)

--ou NOT IN


SELECT c.CustomerID, h.CustomerID 
FROM Sales.Customer c
LEFT JOIN Sales.SalesOrderHeader h
on c.CustomerID = h.CustomerID
WHERE h.CustomerID IS NULL