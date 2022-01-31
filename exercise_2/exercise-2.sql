-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental

--the first table is the one we start with
--then we are going to the next one
--here we are going from rental to customer, find the common ground, then point to where you are looking for

SELECT rental.rental_date
FROM rental
INNER JOIN customer
ON rental.customer_id = customer.customer_id
WHERE customer.first_name = 'Patricia';