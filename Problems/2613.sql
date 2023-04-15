SELECT movies.id, movies.name
FROM movies
RIGHT JOIN prices ON movies.id_prices = prices.id
WHERE prices.value < 2