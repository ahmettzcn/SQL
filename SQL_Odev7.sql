-- film tablosunda bulunan filmleri rating değerlerine göre gruplanması
select rating from film group by rating

-- film sayısı 50'den fazla olan replacement_cost değerini ve karşılık gelen film sayılarını gösteren sorgu
select replacement_cost, COUNT(title) from film GROUP BY replacement_cost HAVING COUNT(title) > 50

-- store_id değerlerine karşılık gelen müşteri sayılarını gösteren sorgu
select 
	COUNT(customer_id),
	store_id
from customer
GROUP BY store_id


-- En fazla şehir barındıran country_id sorgusu
select
	country_id,
	COUNT(city) as cty
from city 
GROUP BY country_id
ORDER BY cty DESC 
LIMIT 1
