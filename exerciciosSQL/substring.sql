

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

