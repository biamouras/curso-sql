SELECT IdCliente,
    QtdePontos
FROM clientes
ORDER BY QtePontos DESC;

/*
intervalos
de 0 a 500          -- Ponei
de 501 a 1.000      -- Ponei Premium
de 1.001 a 5.000    -- Mago Aprendiz
de 5.001 a 10.000   -- Mago Mestre
acima de 10.000     -- Mago Supremo
*/

SELECT IdCliente,
    QtdePontos,
    CASE 
        WHEN QtdePontos <= 500 THEN 'Ponei'
        WHEN QtdePontos <= 1000 THEN 'Ponei Premium'
        WHEN QtdePontos <= 5000 THEN 'Mago Aprendiz'
        WHEN QtdePontos <= 1000 THEN 'Mago Mestre'
        ELSE 'Mago Supremo'
    END AS NomeGrupo
FROM clientes
ORDER BY QtdePontos DESC;
