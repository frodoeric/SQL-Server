--união com intersecção
SELECT C.Name, P.Name
FROM Production.ProductCategory C

INNER JOIN Production.ProductSubcategory S
ON C.ProductCategoryID = S.ProductCategoryID
AND S.ProductCategoryID BETWEEN 1 AND 10

INNER JOIN Production.Product P
ON S.ProductCategoryID = P.ProductSubcategoryID

WHERE C.Name LIKE 'c%'


---------------------------------------------------------------
--Left Join

SELECT C.AccountNumber, H.AccountNumber
	FROM Sales.Customer C
LEFT JOIN Sales.SalesOrderHeader H
ON C.CustomerID = H.CustomerID
LEFT JOIN Sales.SalesOrderDetail O 
ON O.SalesOrderID = H.SalesOrderID
