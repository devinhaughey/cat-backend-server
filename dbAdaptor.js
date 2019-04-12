require('dotenv').config()
const pgPromise = require('pg-promise');

const pgp = pgPromise({});

// Database variables provided by .env file
const config = {
    host: process.env.POSTGRES_HOST,
    port: process.env.POSTGRES_PORT,
    database: process.env.POSTGRES_DB,
    user: process.env.POSTGRES_USER,
    password: process.env.POSTGRES_PASSWORD
};

// Sets the config to connect to the database.
const connection = 'postgres://postgres:1234@db:5432/cat_database';
const db = pgp(connection);

exports.db = db;