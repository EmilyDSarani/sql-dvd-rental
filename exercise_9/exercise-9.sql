-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL

--first, go to film and grab the title
SELECT film.title 
FROM inventory
--then we go to inventory to grab the film id and go to the inventory
LEFT JOIN film
ON film.film_id = inventory.film_id
--then we can move form inventory to rental on rental id
LEFT JOIN rental
ON inventory.inventory_id = rental.inventory_id
--then....get the ones that havent been rented?
WHERE rental.rental_date IS NULL