-- init.sql
CREATE DATABASE rails_db;
CREATE USER rails_user WITH ENCRYPTED PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE rails_db TO rails_user;

\c rails_db

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);