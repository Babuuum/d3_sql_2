CREATE TABLE performers(
	performer_id SERIAL PRIMARY KEY,
	name_nickname VARCHAR(100) NOT NULL,
	genres VARCHAR(100) NOT NULL,
	genre_id INT REFERENCES genres(genre_id) NOT NULL
);

CREATE TABLE albums(
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(100) NOT NULL,
	relese_date INT NOT NULL,
	awards VARCHAR(100) NOT NULL,
	performer_id INT REFERENCES performers(performer_id) NOT NULL
);

CREATE TABLE tracks(
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(100) NOT NULL,
	duration INT NOT NULL,
	album_id INT REFERENCES albums(album_id) NOT NULL
);

CREATE TABLE genres(
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(100) NOT NULL
);