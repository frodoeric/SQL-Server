
DECLARE @a INT = 0;

BEGIN TRY

SELECT 1/@a

END TRY

BEGIN CATCH

SELECT ERROR_MESSAGE(), ERROR_LINE(), ERROR_NUMBER()
, ERROR_PROCEDURE()

END CATCH