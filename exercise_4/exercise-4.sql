-- find all customers first_name, last_name, address, and city
-- Similar to exercise 3 but with customer, address, city

--first, get the firstname and lastname
--see if you can grab address and city
SELECT customer.first_name, customer.last_name, address.address, city.city
FROM customer
--then we want to join customer with address
LEFT JOIN address
ON customer.address_id = address.address_id
--join address with city
LEFT JOIN city
ON address.city_id = city.city_id

