CREATE TABLE IF NOT EXISTS contas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    saldo DECIMAL(10,2)
);

-- Inicia a transação
START TRANSACTION;

-- Debita da conta 1
UPDATE contas
SET saldo = saldo - 500
WHERE id = 1;

-- Credita na conta 2
UPDATE contas
SET saldo = saldo + 500
WHERE id = 2;

-- Confirma todas as alterações
COMMIT;
