-- selecionar os clientes mais antigos
SELECT * 
FROM clientes
ORDER BY DtCriacao;

-- selecionar os clientes mais antigos e com maior pontuação
SELECT *
FROM clientes
-- sem nada, considera que tem ASC (ascendente)
-- se quero descendente, tenho que colocar DESC
-- no final!!
ORDER BY DtCriacao ASC, QtdePontos DESC;

/**
a ordem de comandos deve ser
SELECT
FROM
WHERE
ORDER BY
*/
