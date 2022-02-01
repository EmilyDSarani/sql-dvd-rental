-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city

--the first table is the one we start with
--then we are going to the next one

SELECT address.address_id
FROM address
INNER JOIN city
ON address.city_id = city.city_id
WHERE city.city = 'Dundee';

--this was just to check to see if everything before WHERE was doing what I thought it was in correlation to the test
-- WHERE address_id = 146;