-- Between Kullanımı 
select count(title) from film WHERE replacement_cost BETWEEN 12.99 AND 16.99

-- AND kullanımı

select count(title) from film WHERE replacement_cost >= 12.99 AND replacement_cost<=16.99

-- IN Kullanımı

select first_name, last_name from actor WHERE first_name IN ('Penelope','Nick','Ed')

SELECT * FROM film WHERE rental_rate IN ('0.99','2.99','4.99') AND replacement_cost IN ('12.99','15.99','28.99')
