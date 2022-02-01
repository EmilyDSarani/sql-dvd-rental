-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join

--first, go to category and grab the name
SELECT category.name
--then we are connecting to film_category 
FROM category
--then we go to category to grab the category id and go to the film_cate
LEFT JOIN film_category
ON category.category_id = film_category.category_id
--then we connect film category and film
LEFT JOIN film
ON film_category.film_id = film.film_id
--then we connect the film and inventory
RIGHT JOIN inventory
ON film.film_id = inventory.film_id
--then we can move form inventory to rental on rental id
LEFT JOIN rental
ON inventory.inventory_id = rental.inventory_id
--then....get the ones that havent been rented?
WHERE rental.rental_date IS NULL

