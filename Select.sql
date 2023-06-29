--Задание 2

SELECT track_name, duration
FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track)

SELECT track_name, duration
FROM Track
WHERE duration <= '00:03:50'

SELECT collection_name, year_of_release
FROM Collection
WHERE year_of_release BETWEEN '2018-01-01' AND '2020-12-31'

SELECT name_alias
FROM Executor
WHERE name_alias NOT LIKE '% %'

SELECT track_name
FROM Track
WHERE track_name LIKE '%Мой%' OR track_name LIKE '%My%'


--Задание 3

SELECT genre_name, COUNT(genre)
FROM executor_genre e
JOIN Genre g ON e.genre = g.genre_id 
GROUP BY genre_id;

-- задача 2 с названиями альбомов(но там было условие колличество, так что я сделал и с названиями, но они идут раздельно и просто счетчик)
SELECT album_name, COUNT(track_id)
FROM Track t
JOIN Album a ON t.album = a.album_id
WHERE year_of_release BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY album_name;

-- задача 2 
SELECT COUNT(track_id)
FROM Track t
JOIN Album a ON t.album = a.album_id
WHERE year_of_release BETWEEN '2019-01-01' AND '2020-12-31';

SELECT album_name, AVG(duration)
FROM Track t
JOIN Album a ON t.album = a.album_id
GROUP BY album_name;

SELECT name_alias
FROM executor_album ea
JOIN Executor e ON ea.executor = e.executor_id
JOIN Album a ON ea.album = a.album_id
WHERE year_of_release NOT BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY name_alias;

SELECT collection_name
FROM Collection c
JOIN track_collection tc ON tc.collection = c.collection_id
JOIN Track t ON tc.track = t.track_id
JOIN Album a ON t.album = a.album_id
JOIN Executor e ON t.album = e.executor_id 
WHERE name_alias LIKE 'Оксимирон'
GROUP BY collection_name;