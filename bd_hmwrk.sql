CREATE TABLE IF NOT EXISTS genre (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(40) UNIQUE NOT NULL
    );


CREATE table IF NOT EXISTS artist (
    id SERIAL PRIMARY KEY, 
    name(nick_name) VARCHAR(40) UNIQUE NOT NULL
    );


CREATE TABLE IF NOT EXISTS artist_genre (
    genre_id INTEGER NOT NULL REFERENCES genre (id), 
    artist_id INTEGER NOT NULL REFERENCES artist (id),
    CONSTRAINT pk PRIMARY KEY (genre_id, artist_id)
    );


CREATE TABLE IF NOT EXISTS albums (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(40) UNIQUE NOT NULL,
    created_at SMALLINT NOT NULL
    );


CREATE TABLE IF NOT EXISTS artist_albums (
    artist_id INTEGER NOT NULL REFERENCES artist (id), 
    ailbums_id INTEGER NOT NULL REFERENCES albums (id),
    CONSTRAINT pkk PRIMARY KEY (artist_id, ailbums_id)
    );


CREATE TABLE IF NOT EXISTS tracks (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(40) UNIQUE NOT NULL,
    duration SMALLINT NOT NULL,
    albums_id INTEGER NOT NULL REFERENCES album (id)
    );


CREATE TABLE IF NOT EXISTS collections (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(40) UNIQUE NOT NULL,
    created_at SMALLINT NOT NULL
    );


CREATE TABLE IF NOT EXISTS tracks_collection (
    tracks_id INTEGER NOT NULL REFERENCES tracks (id), 
    collection_id INTEGER NOT NULL REFERENCES collection (id),
    CONSTRAINT pkkk PRIMARY KEY ( tracks_id, collection_id)
    );