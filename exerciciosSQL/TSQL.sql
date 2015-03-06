USE AdventureWorks2008R2
--use para indicar a base

SELECT * FROM 
AdventureWorks2008R2.HumanResources.Employee
--base com o schema


SELECT TOP 10
e.BirthDate, JobTitle, LoginID, BusinessEntityID
FROM 
HumanResources.Employee e --uso de alias

SELECT DISTINCT FirstName --nao recomendado o uso do 
						  --distinct para mais de um campo
FROM
Person.Person

SELECT 
FirstName NOME
FROM
Person.Person

SELECT 
FirstName NOME
FROM
Person.Person P
WHERE (P.BusinessEntityID = 50
AND P.FirstName = 'Sidney')
OR (P.BusinessEntityID = 100)

SELECT TOP 10 * FROM Sales.SalesOrderDetail

SELECT SYSDATETIME(),
GETDATE(),
DAY(getdate()) dia