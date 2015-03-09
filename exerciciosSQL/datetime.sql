
DECLARE @nome varchar(50) = ' Turma do Chaves '

SELECT @nome,
LEFT(@nome, 5) L, -- pega a string da esquerda para direita
RIGHT(@nome, 6)R, -- pega a strinda da direita para esquerda

LTRIM(@nome) LT, -- retira os espa�os da esquerda
RTRIM(@nome) RT, -- retira os espa�os da direita
REPLACE(@nome,	'.', ',') Reb, -- troca as posi��es informadas
SUBSTRING(@nome, 2, 3) AS sub,
UPPER(@nome) up,
LOWER(@nome) lo

/*
datetime

    data e hora

date 

    somente data

smalldatetime

	precis�o menor

datetime2
	
	sete casas depois dos segundos

datetimeoffset

	sete casas mais fuso hor�rio

*/





SELECT GETDATE(),
DATEADD(YEAR, 2, GETDATE()),
DATEPART(MONTH, GETDATE()), -- retorna um peda�o da data
DATEDIFF(DAY, '2012-12-01', GETDATE()) diff--pega a diferen�a entre
											--dois dados

--para compara��o de datas:

DATEFORMAT YMD --obriga a interpreta��o da data
				--ano m�s e dia
				-- 2015-03-09

SELECT CONVERT(varchar(10), GETDATE(), 103)

