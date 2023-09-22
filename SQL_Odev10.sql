-- şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusu
SELECT
	city,
	country
FROM city
LEFT JOIN country
ON city.country_id = country.country_id

-- payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusu
SELECT 
	payment.payment_id,
	customer.first_name,
	customer.last_name
FROM customer
RIGHT JOIN payment
ON customer.customer_id = payment.customer_id

--  rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusu
SELECT 
	rental.rental_id,
	customer.first_name,
	customer.last_name
FROM customer
FULL JOIN rental
ON customer.customer_id = rental.customer_id