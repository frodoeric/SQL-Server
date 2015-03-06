
--Nomear a data
SELECT TOP 200
CASE 
	when MONTH(h.OrderDate) = 8 THEN
'Outubro'
	when MONTH(h.OrderDate) = 9 THEN
'Setembro' 
ELSE
'Não fiz o case'
END AS mes
FROM Sales.SalesOrderHeader h
GROUP BY h.OrderDate



--função datename já nomeia
SET LANGUAGE brazilian
SELECT TOP 500
DATENAME(MONTH, h.OrderDate)
FROM Sales.SalesOrderHeader h