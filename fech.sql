
DECLARE @count INT
SET @count = 50

SELECT H.SalesOrderID, H.SalesPersonID, H.CustomerID, OrderDate
FROM Sales.SalesOrderHeader H

ORDER BY OrderDate, H.SalesOrderID DESC
OFFSET @count ROWS FETCH FIRST 50 ROWS ONLY



--Utilizado para fazer pagina��o no SQL, utilizando uma vari�vel
--como par�metro