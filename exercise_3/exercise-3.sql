-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_categor onto category

--select is like columns and where is like rows

--okay so... first start with film...and we will want the title
SELECT film.title
FROM film
--then, we want to left join into film_category
LEFT JOIN film_category
ON film.film_id = film_category.film_id
--then we want to join into the category
LEFT JOIN category
ON film_category.category_id = category.category_id
--then call the category we want
WHERE category.name = 'Action'
