-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name

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
--customer to address
LEFT JOIN address
ON customer.address_id = address.address_id
LEFT JOIN city
ON address.city_id = city.city_id
WHERE city.city = 'Dundee';