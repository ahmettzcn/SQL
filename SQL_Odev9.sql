-- Şehir ve Ülke isimlerini tek tabloda görebileceğimiz bir sorgu
SELECT 
	city,
	country
FROM city 
INNER JOIN country
ON city.country_id = country.country_id

-- payment tablosundan kişilerin payment_id'lerini görebildiğimiz sorgu
SELECT 
	payment_id,
	first_name,
	last_name
FROM customer 
INNER JOIN payment
ON customer.customer_id = payment.customer_id

-- rental tablosundan kişilerin rental_id'lerini görebildiğimiz sorgu
SELECT
	rental_id,
	first_name,
	last_name
FROM customer
INNER JOIN rental
ON customer.customer_id = rental.customer_id