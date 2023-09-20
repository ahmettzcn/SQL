select title,description from film

select * from film where (film.length > 60 AND film.length < 75)

select * from film where rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99)

select last_name from customer where first_name = 'Mary'

select * from film where NOT film.length > 50 AND NOT (rental_rate = 2.99 OR rental_rate = 4.99)