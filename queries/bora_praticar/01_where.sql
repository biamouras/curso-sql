-- Lista de transações com apenas 1 ponto;
SELECT * 
FROM transacoes
WHERE QtdePontos = 1;

-- Lista de pedidos realizados no fim de semana;
SELECT *
FROM transacoes
WHERE strftime('%w', date(substr(DtCriacao, 1, 19))) IN ('0', '6');

-- Lista de clientes com 0 (zero) pontos;
SELECT *
FROM clientes
WHERE QtdePontos = 0;

-- Lista de clientes com 100 a 200 pontos (inclusive ambos);
SELECT *
FROM clientes
WHERE QtdePontos >= 100
AND QtdePontos <= 200;

-- Lista de produtos com nome que começa com “Venda de”;
SELECT *
FROM produtos
WHERE DescProduto LIKE 'Venda de%';

-- Lista de produtos com nome que termina com “Lover”;
SELECT *
FROM produtos
WHERE DescProduto LIKE '%Lover';

-- Lista de produtos que são “chapéu”;
SELECT *
FROM produtos
WHERE DescProduto LIKE '%Chapéu%';

--Lista de transações com o produto “Resgatar Ponei”;
SELECT tp.*
FROM transacao_produto tp
INNER JOIN produtos p ON p.IdProduto = tp.IdProduto
WHERE p.DescProduto = 'Resgatar Ponei';

-- sem usar join

-- 1. identificar o id do produto "Resgatar Ponei"
SELECT *
FROM produtos
WHERE DescProduto = 'Resgatar Ponei';
-- IdProduto = 15

-- 2. selecionar as transacoes 
SELECT * 
FROM transacao_produto
WHERE IdProduto = 15;

-- Listar todas as transações adicionando uma coluna nova sinalizando “alto”, “médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500]
SELECT *, 
    CASE 
        WHEN QtdePontos < 10 THEN 'baixo'
        WHEN QtdePontos < 500 THEN 'médio'
        WHEN QtdePontos >= 500 THEN 'alto'
    END as TpTransacao
FROM transacoes;

