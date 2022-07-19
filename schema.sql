/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    date_of_birth DATE,
    weight_kg DECIMAL,
    neutered BOOLEAN,
    escape_attempts INT
);

ALTER TABLE animals ADD species varchar(255);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name varchar(100),
    age INT
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(100)
);

ALTER TABLE animals DROP COLUMN species;
