-- selecione todos os clientes com email cadastrado
SELECT *
FROM clientes
-- WHERE FlEmail = 1
-- WHERE FlEmail != 0oduto
WHERE FlEmail <> 0;

-- selecione todas as transações de 50 pontos (exatos)
SELECT * 
FROM transacoes
WHERE QtdePontos = 50;

-- selecione todos clientes com mais de 500 pontos
SELECT IdCliente, QtdePontos
FROM clientes
WHERE QtdePontos > 500;

-- selecione produtos que contém churn no nome
SELECT *
FROM produtos
-- minha resposta
-- WHERE DescProduto LIKE "Churn%";
-- ex do teo
/* 
-- uso do OR
WHERE DescProduto = 'Churn_10pp'
OR DescProduto = 'Churn_2pp'
OR DescProduto = 'Churn_5pp';
*/
/*
-- uso do IN
WHERE DescProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')
*/
