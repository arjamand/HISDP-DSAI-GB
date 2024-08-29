-- Task 1
-- select actor_id from sakila.actor where actor_id=58

-- Task 2
-- select title from sakila.film where title like 'P%'

-- Task 3
-- select title from sakila.film where release_year=2006

-- Task 4

-- Task 5
-- select first_name from sakila.actor where first_name not like '%t'

-- Task 6
-- select first_name, last_name from sakila.actor where actor_id>=50 and actor_id<=150

-- Task 7
-- select first_name, LEFT(last_name, 1) as first_letter from sakila.actor  

-- Task 8
-- SELECT CONCAT('Film Academy ', title, ' was released in the year ', release_year) AS movie_description FROM sakila.film

-- Task 10
-- SELECT CONCAT(first_name, ' ', last_name) AS customer_name, customer_id FROM sakila.customer

-- Task 10
-- SELECT substring(first_name,1,3) AS nick_names from sakila.actor