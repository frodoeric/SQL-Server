


SELECT * FROM Person.Person
WHERE MiddleName IS NULL -- = NULL N�O � POSS�VEL COMPARAR NULO

SELECT MiddleName FROM Person.Person
WHERE MiddleName IS NOT NULL -- <> null

SET ANSI_NULLS OFF --SE A PROPRIEDADE FOR DESABILITADA, NULO PODE
					--SER COMAPRADO.

------------------------------------------------------------------


