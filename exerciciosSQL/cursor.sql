Declare @name varchar(50)
DECLARE product_cursos CURSOR FOR
	SELECT name FROM sys.procedures
  OPEN product_cursor;
  FETCH NEXT FROM product_cursor INTO @name;

  WHILE @@FETCH_STATUS = 0
  BEGIN
	exec sp_recompile @name;

	FETCH NEXT FROM product_cursor INTO @name;
   END;
  CLOSE produtc_curos;
  
DELOCATE;