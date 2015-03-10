--Query Recursiva


--Primeiro eh criada as tabelas derivadas
--e depios utiliza a derivacao
WITH CTE_year AS
(
	SELECT YEAR(OrderDate) AS orderyear, CustomerID
	FROM Sales.SalesOrderHeader
)
SELECT orderyear,
COUNT(Distinct CTE_year.CustomerID) AS cust_count
FROM CTE_year
GROUP BY orderyear;



