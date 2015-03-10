--funcoes

CREATE FUNCTION fn_rel_vendas(@valor INT, @valorGrupo int)
 RETURNS TABLE
AS RETURN(

SELECT
 
 
 
 
 
YEAR(OrderDate) ano
, MONTH(OrderDate) mes
,DAY(OrderDate) dia
, SUM(SubTotal) total
, AVG(SubTotal) mediavendas
, MAX(H.SubTotal) maior
, MIN(SubTotal) menor
, SUM(Freight) frete
, COUNT(SubTotal) nrovendas 

FROM

Sales.SalesOrderHeader H
 
INNER JOIN Sales.SalesOrderDetail D
 
ON H.SalesOrderID = D.SalesOrderID
 WHERE SubTotal>1000 -- VENDAS MAIOR Q MIL!
 
GROUP BY YEAR(OrderDate), MONTH(OrderDate),DAY(OrderDate)
 
HAVING AVG(SubTotal)>10000 -- MÉDIAS MAIOR Q 10000!
 
--ORDER BY ano, mes,dia

)


SELECT * FROM fn_rel_vendas(1000, 10000)