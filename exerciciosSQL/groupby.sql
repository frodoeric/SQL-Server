--Group By
--Quando n�o for fun��o de agrega��o tem que agrupar

SELECT DAY(OrderDate), SUM(SubTotal) total,
SUM(Freight) frete
FROM Sales.SalesOrderHeader h
INNER JOIN Sales.SalesOrderDetail d
ON h.SalesOrderID = d.SalesOrderID
GROUP BY DAY(OrderDate)