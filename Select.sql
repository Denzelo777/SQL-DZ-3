--Задание 2

SELECT track_name, duration
FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track);

SELECT track_name, duration
FROM Track
WHERE duration >= '00:03:30';

SELECT collection_name, year_of_release
FROM Collection
WHERE year_of_release BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name_alias
FROM Executor
WHERE name_alias NOT LIKE '% %';

SELECT track_name
FROM Track
WHERE track_name ILIKE 'мой %' OR track_name ILIKE 'my %' 
OR track_name ILIKE '% мой' OR track_name ILIKE '% my'
OR track_name ILIKE '% мой %' OR track_name ILIKE '% my %'
OR track_name ILIKE 'мой' OR track_name ILIKE 'my';


--Задание 3

SELECT genre_name, COUNT(genre)
FROM executor_genre e
JOIN Genre g ON e.genre = g.genre_id 
GROUP BY genre_id;


SELECT COUNT(track_id)
FROM Track t
JOIN Album a ON t.album = a.album_id
WHERE year_of_release BETWEEN '2019-01-01' AND '2020-12-31';

SELECT album_name, AVG(duration)
FROM Track t
JOIN Album a ON t.album = a.album_id
GROUP BY album_name;

SELECT name_alias 
FROM Executor
WHERE name_alias NOT IN (
    SELECT name_alias
    FROM executor_album ea
    JOIN Executor e ON ea.executor = e.executor_id
    JOIN Album a ON ea.album = a.album_id
    WHERE year_of_release BETWEEN '2020-01-01' AND '2020-12-31'
);

SELECT collection_name
FROM Collection c
JOIN track_collection tc ON tc.collection = c.collection_id
JOIN Track t ON tc.track = t.track_id
JOIN Album a ON t.album = a.album_id
JOIN Executor e ON t.album = e.executor_id 
WHERE name_alias LIKE 'Оксимирон'
GROUP BY collection_name;
