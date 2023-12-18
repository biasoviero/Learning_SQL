SELECT cpf, enome, dnome
FROM empregados
JOIN departamentos
USING (dnumero)
WHERE cpf NOT IN
    (SELECT cpf_emp
    FROM trabalha)
ORDER BY cpf