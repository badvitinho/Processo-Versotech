SELECT 
    id_vendedor AS id,
    nome,
    salario
FROM 
    vendedores
WHERE 
    salario > (SELECT AVG(salario) FROM vendedores)
ORDER BY 
    salario DESC;