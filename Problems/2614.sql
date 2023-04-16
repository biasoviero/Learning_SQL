SELECT customers.name, rentals.rentals_date
FROM customers
RIGHT JOIN rentals ON customers.id = rentals.id_customers
WHERE rentals.rentals_date BETWEEN '09/01/2016' AND '09/30/2016'