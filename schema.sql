/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;

CREATE TABLE animals (
    id integer PRIMARY KEY,
    name varchar(100),
    date_of_birth DATE,
    weight_kg DECIMAL,
    neutered BOOLEAN,
    escape_attempts INT
);
