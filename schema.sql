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

ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species (id);

ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owners (id);

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    age INT,
    date_of_graduation DATE
);