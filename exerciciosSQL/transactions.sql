--Transactions
BEGIN TRY

BEGIN TRAN -- abrindo uma transa��o explicitamente

UPDATE dbo.pessoas SET nome = 'jose' WHERE id = 1

COMMIT -- fecha a transa��o


END TRY

BEGIN CATCH
	ROLLBACK
END CATCH

SELECT @@TRANCOUNT --verifica as transa��es em aberto


--se a transa��o ficar aberta, quando for feito o select em outra
--sess�o, ficarah aguardando o fechamento da sess�o.

--por causa do bloqueio compartilhado.
