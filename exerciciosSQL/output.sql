--parametro para retornar valor


CREATE PROCEDURE USP_output_param
(@valor INT OUTPUT)
AS
BEGIN
SET NOCOUNT ON

--logic

SET @valor = 100;
--logic

END
-------------------------------------------
DECLARE @t INT

EXEC USP_output_param @T OUTPUT

SELECT @t