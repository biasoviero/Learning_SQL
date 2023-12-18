SELECT life_registry.name AS name, ROUND(omega * 1.618, 3) AS "Fator N"
FROM dimensions
JOIN life_registry
ON life_registry.dimensions_id = dimensions.ID
WHERE life_registry.name LIKE 'Richard %' AND dimensions.name IN ('C875', 'C774')
ORDER BY omega