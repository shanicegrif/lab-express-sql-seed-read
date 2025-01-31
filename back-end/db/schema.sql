    DROP DATABASE IF EXISTS songs_dev;
    CREATE DATABASE songs_dev;

    \c songs_dev;

    CREATE TABLE songs (
        id SERIAL PRIMARY KEY,
        name TEXT NOT NULL,
        artist TEXT NOT NULL,
        album TEXT,
        time TEXT,
        is_favorite BOOLEAN
    );

    CREATE TABLE playlists (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    creator TEXT NOT NULL,
    creation_year INT, 
    song_id INTEGER REFERENCES songs (id) ON DELETE CASCADE
    );