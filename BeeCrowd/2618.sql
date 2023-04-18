SELECT products.name, providers.name, categories.name
FROM products
RIGHT JOIN providers ON products.id_providers = providers.id
RIGHT JOIN categories ON products.id_categories = categories.id
WHERE providers.name = 'Sansul SA' AND categories.name = 'Imported'