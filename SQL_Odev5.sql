-- n karakteri ile biten en uzun 5 film'i gösteren sorgu
select * from film WHERE title LIKE '%n' ORDER BY film.length DESC LIMIT 5

--n karakteri ile biten en kısa ikinci (6,7,8,9,10) filmi gösteren sorgu
select * from film WHERE title LIKE '%n' ORDER BY film.length ASC OFFSET 5 LIMIT 5

--last_name sütununa göre azalan store_id 1 olan ilk 4 veriyi getirir.
select * from customer WHERE store_id = 1 ORDER BY last_name DESC LIMIT 4