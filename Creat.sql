CREATE TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Executor (
    executor_id SERIAL PRIMARY KEY,
    name_alias VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS executor_genre (
    executor_genre_id SERIAL PRIMARY KEY,
    executor INTEGER NOT NULL REFERENCES Executor(executor_id),
    genre INTEGER NOT NULL REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS Album (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(30) NOT NULL,
    year_of_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS executor_album (
    executor_album_id SERIAL PRIMARY KEY,
    executor INTEGER NOT NULL REFERENCES Executor(executor_id),
    album INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Track (
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(30) NOT NULL,
    duration TIME NOT NULL,
    album INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(30) NOT NULL,
    year_of_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS track_collection (
    rack_album_id SERIAL PRIMARY KEY,
    track INTEGER NOT NULL REFERENCES Track(track_id),
    collection INTEGER NOT NULL REFERENCES Collection(collection_id)
);