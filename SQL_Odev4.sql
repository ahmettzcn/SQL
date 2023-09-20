--film tablosundaki replacement_cost sütunundaki uniq olan verileri ORDER BY Yardımıyla sıralı bir şekilde gösterir.
select distinct (replacement_cost) from film ORDER BY replacement_cost ASC

-- Birbirinden benzersiz kaç farklı veri olduğu sayısını veren sorgu
select COUNT(distinct(replacement_cost)) from film

-- Title'ı T ile başlayan ve rating'i G olan kaç title olduğunu gösteren sorgu
select COUNT(title) from film WHERE title LIKE 'T%' AND rating = 'G'

-- 5 karakterden oluşan ülke isimlerinin sayısını gösterir.
select COUNT(country) from country WHERE length(country) = 5

-- R ile başlayıp r ile biten kaç şehir olduğunu gösterir.
select COUNT(city) from city WHERE city LIKE 'R%r'