--DYNAMICS SQL

DECLARE @p VARCHAR(100) = 10
DECLARE @sql VARCHAR(MAX)

SET @sql = 'Select @ from person.person
whree businessEntityid = ' + @p + ' and persontype = ''Em'''

