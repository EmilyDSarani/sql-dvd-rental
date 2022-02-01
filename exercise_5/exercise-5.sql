-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film

--okay get film title
SELECT film.title
FROM film
--then we grab film actor and join the film_ids
LEFT JOIN film_actor
ON film.film_id = film_actor.film_id
--then we move to actor which has the actor_id for both
LEFT JOIN actor
ON film_actor.actor_id = actor.actor_id
--then we have the actor last_name
WHERE actor.last_name = 'Davis'