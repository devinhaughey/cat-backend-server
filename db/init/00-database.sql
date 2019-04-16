CREATE DATABASE cat_database;

\connect cat_database;

CREATE SCHEMA cat_schema;
CREATE TABLE cat_schema.breed_table (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    image_url TEXT,
    temperament TEXT,
    origin TEXT
);

COMMENT ON TABLE cat_schema.breed_table IS
'Table that holds cat breeds defined on Wikipedia.';

CREATE TABLE cat_schema.favorite_table (
    breed_id INTEGER NOT NULL REFERENCES cat_schema.breed_table(id)
);

COMMENT ON TABLE cat_schema.favorite_table IS
'Table that holds all of the favorite cat breeds.';
