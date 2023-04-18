SELECT movies.id, movies.name
FROM movies
RIGHT JOIN genres ON movies.id_genres = genres.id
WHERE genres.description = 'Action'