
--Nomear a data
SELECT TOP 200
CASE 
	when MONTH(h.OrderDate) = 8 THEN
'Outubro'
	when MONTH(h.OrderDate) = 9 THEN
'Setembro' 
ELSE
'N�o fiz o case'
END AS mes
FROM Sales.SalesOrderHeader h
GROUP BY h.OrderDate



--fun��o datename j� nomeia
SET LANGUAGE brazilian
SELECT TOP 500
DATENAME(MONTH, h.OrderDate)
FROM Sales.SalesOrderHeader h