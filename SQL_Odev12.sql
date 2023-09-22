-- Ortalama film uzunluğundan fazla kaç tane film olduğunu gösteren sorgu
SELECT
	COUNT(length)
FROM film
WHERE length >
(
	SELECT
		AVG(length)
	FROM film
)

-- en yüksek rental_rate değerine sahip kaç tane film olduğunu gösteren sorgu
SELECT
	COUNT(rental_rate)
FROM film
WHERE rental_rate = ANY
(
	SELECT
		MAX(rental_rate)
	FROM film
)

-- en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayan sorgu
SELECT 
	*
FROM film
WHERE rental_rate = 
(
	SELECT 
		MIN(rental_rate)
	FROM film
)
AND
replacement_cost = 
(
	SELECT 
		MIN(replacement_cost)
	FROM film
)

-- en fazla sayıda alışveriş yapan müşterilerin listesi için 

SELECT
	musteri.first_name,
	musteri.last_name,
	MAX(alışveriş_sayısı) as maxx
FROM(
	SELECT
		payment.customer_id,
		customer.first_name,
		customer.last_name,
		COUNT(payment.customer_id) as alışveriş_sayısı
	FROM payment
	INNER JOIN customer
	ON customer.customer_id = payment.customer_id
	GROUP BY payment.customer_id,
			 customer.first_name,
			 customer.last_name

) as musteri
GROUP BY 
musteri.first_name,
musteri.last_name
ORDER BY maxx DESC
 