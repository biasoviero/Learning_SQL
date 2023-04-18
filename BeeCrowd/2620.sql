SELECT customers.name, orders.id
FROM customers
RIGHT JOIN orders ON customers.id = orders.id_customers
WHERE orders.orders_date BETWEEN '01/01/2016' AND '06/30/2016'
ORDER BY orders.id