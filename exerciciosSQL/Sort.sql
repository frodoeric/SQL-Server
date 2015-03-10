SELECT FirstName FROM Person.Person

ORDER BY BusinessEntityID

--N�o tem necessidade de mostrar a coluna ordenada,
--s� quando � feito o distinct.
-----------------------------------------------------------

SELECT DISTINCT(FirstName) FROM Person.Person

ORDER BY FirstName
-----------------------------------------------------------

SELECT FirstName FROM Person.Person

ORDER BY 1 --ordena pela primeira coluna
-----------------------------------------------------------

SELECT FirstName as nome FROM Person.Person

ORDER BY nome --ordena pela primeira coluna
-----------------------------------------------------------

SELECT FirstName as nome FROM Person.Person

ORDER BY nome ASC --OU DESC --ordena por descendente ou ascendente
-----------------------------------------------------------


