--LIKE kullanımı
-- Ülke ismi A ile başlayıp a ile bitenleri getiren bir sorgudur.
select * from country WHERE country LIKE 'A%a'

-- 6 karakterden fazla olan ve sonu 'n' ile biten ülkeleri getiren sorgu
select * from country WHERE length(country)>=6 AND country LIKE '%n'

-- filmin başlığında en az 4 adet T ve t içeren isimleri listeler.
select title from film WHERE title LIKE '%T%T%T%T%' OR title LIKE '%t%t%t%t'

-- başlığı 'C' ile başlayan ve length'i 90 üzeri ve rantal_rate'i 2.99 olan filmleri sıralayan sorgu
select * from film WHERE title LIKE 'C%' AND film.length > 90 AND rental_rate = 2.99