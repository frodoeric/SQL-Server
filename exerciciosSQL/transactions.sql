--Transactions
BEGIN TRY

BEGIN TRAN -- abrindo uma transação explicitamente

UPDATE dbo.pessoas SET nome = 'jose' WHERE id = 1

COMMIT -- fecha a transação


END TRY

BEGIN CATCH
	ROLLBACK
END CATCH

SELECT @@TRANCOUNT --verifica as transações em aberto


--se a transação ficar aberta, quando for feito o select em outra
--sessão, ficarah aguardando o fechamento da sessão.

--por causa do bloqueio compartilhado.
