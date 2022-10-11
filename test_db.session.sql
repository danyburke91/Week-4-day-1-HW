-- 1. How many actors are there with the last name ‘Wahlberg’?
-- 2
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

SELECT last_name, COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;


-- 2. How many payments were made between $3.99 and $5.99?
-- 3273
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


-- 3. What film does the store have the most of? (search in inventory)
-- 200 / CURTAIN VIDEOTAPE
SELECT film_id, COUNT(*) 
FROM inventory
GROUP BY film_id
ORDER by COUNT(*) DESC;

SELECT title
FROM film
WHERE film_id = 200;


-- 4. How many customers have the last name ‘William’?


SELECT last_name, COUNT(last_name)
FROM customer
WHERE last_name = 'William';
GROUP BY last_name;

-- 5. What store employee (get the id) sold the most rentals?
-- 1 =  MIKE HILLYER
SELECT staff_id, COUNT (staff_id)
FROM rental
GROUP BY staff_id

SELECT first_name, last_name
FROM staff
WHERE staff_id = 1;


-- 6. How many different district names are there?
-- 378
SELECT district, COUNT(DISTINCT district)
FROM address
GROUP BY district;

SELECT COUNT(DISTINCT district)
FROM address


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- LAMBS CINCINATTI
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

SELECT film_id, title
FROM film
WHERE film_id = 508;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- 21
SELECT last_name, COUNT( last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY last_name;

SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es';


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
-- with ids between 380 and 430? (use group by and having > 250)

SELECT amount, COUNT(*)
FROM payment
GROUP BY amount
HAVING COUNT(*)>250
ORDER BY COUNT(*) DESC;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- 5 / PG-13
SELECT rating, COUNT( DISTINCT rating)
FROM film
GROUP BY rating
ORDER by COUNT(*) DESC;

SELECT COUNT(DISTINCT rating)
FROM film;

SELECT rating, COUNT(*)
FROM film
WHERE rating = 'PG-13'
GROUP BY rating;


