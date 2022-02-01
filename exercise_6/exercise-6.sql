-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5

--first, go to film and grab the title
SELECT film.title
FROM film
--then we go to inventory to grab the film id and go to the rental
LEFT JOIN inventory
ON film.film_id = inventory.film_id
--then we can move form inventory to rental on rental id
LEFT JOIN rental
ON inventory.inventory_id = rental.inventory_id
--then move from rental to customer
LEFT JOIN customer
ON rental.customer_id = customer.customer_id
--Roberta
WHERE customer.first_name = 'Roberta' 