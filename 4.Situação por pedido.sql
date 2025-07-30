SELECT
    id_pedido AS id,
    valor_total AS valor,
    data_emissao AS data,
    CASE
        WHEN data_cancelamento IS NOT NULL THEN 'CANCELADO'
        WHEN data_faturamento IS NOT NULL THEN 'FATURADO'
        ELSE 'PENDENTE'
    END AS situacao
FROM
    pedido
ORDER BY
    id_pedido;