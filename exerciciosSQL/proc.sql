--PROCEDURE


CREATE PROCEDURE USP_ins_pessoas
AS
BEGIN
SET NOCOUNT ON

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

End



--execucao

EXEC USP_ins_pessoas


-- alter para alterar

ALTER PROCEDURE USP_ins_pessoas
@valor INT, --substituir os valores por variaveis
@valorGrupo INT
as 

EXEC USP_ins_pessoas 1000, 10000