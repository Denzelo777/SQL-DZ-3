INSERT INTO Genre (genre_name)
VALUES ('Рок');

INSERT INTO Genre (genre_name)
VALUES ('Джаз');

INSERT INTO Genre (genre_name)
VALUES ('Реп');


INSERT INTO Executor (name_alias)
VALUES ('Дайна Кролл');

INSERT INTO Executor (name_alias)
VALUES ('Фредди Меркьюри');

INSERT INTO Executor (name_alias)
VALUES ('Оксимирон');

INSERT INTO Executor (name_alias)
VALUES ('Роберт Плант');

INSERT INTO Executor (name_alias)
VALUES ('Бон Джови');


INSERT INTO Album (album_name, year_of_release)
VALUES ('A Night at the Opera', DATE '1975-12-02');

INSERT INTO Album (album_name, year_of_release)
VALUES ('Led Zeppelin IV', DATE '1971-11-08');

INSERT INTO Album (album_name, year_of_release)
VALUES ('Дело нескольких минут', DATE '2019-09-13');

INSERT INTO Album (album_name, year_of_release)
VALUES ('Crush', DATE '2000-05-23');

INSERT INTO Album (album_name, year_of_release)
VALUES ('This Dream of You', DATE '2020-09-25');


INSERT INTO Track (track_name, duration, album)
VALUES ('Bohemian Rhapsody', TIME '0:06:00', 1);

INSERT INTO Track (track_name, duration, album)
VALUES ('Bring It on Home', TIME '0:09:30', 2);

INSERT INTO Track (track_name, duration, album)
VALUES ('Immigrant song', TIME '0:03:42', 2);

INSERT INTO Track (track_name, duration, album)
VALUES ('Its My Life', TIME '0:03:43', 4);

INSERT INTO Track (track_name, duration, album)
VALUES ('Дело нескольких минут', TIME '0:05:50', 3);

INSERT INTO Track (track_name, duration, album)
VALUES ('But Beautiful', TIME '0:04:50', 5);

INSERT INTO Track (track_name, duration, album)
VALUES ('Everyday', TIME '0:03:00', 4);


INSERT INTO Collection (collection_name, year_of_release)
VALUES ('Русский реп', DATE '2019-12-20');

INSERT INTO Collection (collection_name, year_of_release)
VALUES ('Рок на все времена', DATE '2020-06-29');

INSERT INTO Collection (collection_name, year_of_release)
VALUES ('Джаз наше всё', DATE '2021-03-15');

INSERT INTO Collection (collection_name, year_of_release)
VALUES ('Рок-душа', DATE '2016-07-09');


INSERT INTO executor_genre (executor, genre)
VALUES (1, 2), (2, 1), (3, 3), (4, 1), (5, 1);

INSERT INTO executor_album (executor, album)
VALUES (1, 5), (2,1), (3, 3), (4, 2), (5, 4);

INSERT INTO track_collection (track, collection)
VALUES (1, 4), (2, 2), (3, 2), (4, 4), (5, 1), (6, 3), (7, 2);