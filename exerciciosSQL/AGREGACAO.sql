--Funções de agregação

--SYSTEM FUNCTIONS


SELECT 

SUM(ListPrice) soma,
AVG(ListPrice) media,
MIN(ListPrice) menor,
MAX(ListPrice) maior,
COUNT(1) contador

FROM Production.Product;


--Não é função de agregação

SELECT ABS(ListPrice) Ab,
ROUND(ListPrice, 2)

FROM Production.Product


SELECT CHARINDEX('a', 'Turma do Chaves')--posição do índice

SELECT CHARINDEX('a', 'Turma do Chaves', 6)--posição de onde quer a contagem




SELECT 

FirstName + ISNULL(MiddleName, '')

FROM 
	Person.Person



SELECT COALESCE(CELULAR, FIXO) AS CONTATO -- Retorna o primeiro não nulo
FROM TELEFONE



SELECT TRY_PARSE('SQLServer'
AS datetime USING 'en-US') AS 
try_parse_result;

SELECT TRY_PARSE('SQLServer'
AS datetime USING 'en-US') AS 
try_parse_result;

--Operador ternario

SELECT ProductID, unitprice,
			IIF(unitprice > 50, 'high', 'low')
			AS pricepoint

FROM Production.Product




SELECT CHOOSE (@escolha, 'Beverages', 'Condiments', 'Confections')
	AS choose_result;

