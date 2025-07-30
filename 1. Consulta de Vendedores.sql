SELECT 
    id_vendedor AS id, 
    nome, 
    salario
FROM 
    vendedores
WHERE 
    inativo = FALSE
ORDER BY 
    nome ASC;