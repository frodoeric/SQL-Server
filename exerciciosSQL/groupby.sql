--Group By
--Quando não for função de agregação tem que agrupar

SELECT DAY(OrderDate), SUM(SubTotal) total,
SUM(Freight) frete
FROM Sales.SalesOrderHeader h
INNER JOIN Sales.SalesOrderDetail d
ON h.SalesOrderID = d.SalesOrderID
GROUP BY DAY(OrderDate)