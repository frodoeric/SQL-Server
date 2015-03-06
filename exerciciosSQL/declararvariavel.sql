

DECLARE @valor INT = 10;
SET @valor = 50;--substitui o valor

SET @valor = (SELECT TOP 1
SUM(s.SalesOrderID) FROM Sales.SalesOrderDetail s)

--SET @nomeMae = (SELECT TOP 1 nome FROM tabela 
--WHERE id = 50 codigoparente = 8)

SELECT 
p.FirstName, p.LastName, p.MiddleName
FROM Person.Person p


SELECT 
p.FirstName, p.LastName, p.MiddleName
FROM Person.Person p
ORDER BY p.FirstName 


