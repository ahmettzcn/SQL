--Aggregate Functions

-- rental_rate sütunun ortalamasını getiren sorgu
select AVG(rental_rate) from film 

-- C karakteri ile başlayan filmlerin sayısını verir.
select COUNT(title) from film WHERE title LIKE 'C%'

-- rental_rate'i 0.99 olan en uzun filmin kaç dakika olduğunu getiren sorgu
select MAX(film.length) from film WHERE rental_rate = 0.99
-- MAX Aggregate fonksiyonunu kullanmadan da bulabileceğimiz yöntem mevcuttur.
select film.length from film WHERE rental_rate = 0.99 ORDER BY film.length DESC LIMIT 1


-- film uzunluğu 150'den fazla olan farklı kaç tane replacement_cost değeri olduğunu gösteren sorgu
select COUNT(DISTINCT(replacement_cost)) from film WHERE film.length > 150