CREATE VIEW vw_list_price

AS

SELECT 

SUM(ListPrice) soma,
AVG(ListPrice) media,
MIN(ListPrice) menor,
MAX(ListPrice) maior,
COUNT(1) contador

FROM Production.Product;

--order by nao pode ser usado na criacao da view
--mas pode ser usado no select
