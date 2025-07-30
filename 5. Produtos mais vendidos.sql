SELECT 
    ip.id_produto,
    SUM(ip.quantidade) AS quantidade_vendida,
    SUM(ip.preco_praticado * ip.quantidade) AS total_vendido,
    COUNT(DISTINCT ip.id_pedido) AS pedidos,
    COUNT(DISTINCT p.id_cliente) AS clientes
FROM 
    itens_pedido ip
JOIN 
    pedido p ON ip.id_pedido = p.id_pedido
GROUP BY 
    ip.id_produto
ORDER BY 
    quantidade_vendida DESC,
    total_vendido DESC
LIMIT 1;