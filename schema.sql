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

CREATE TABLE specializations (
  species_id int NOT NULL,
  vets_id int NOT NULL,
  PRIMARY KEY (species_id, vets_id),
  FOREIGN KEY (species_id) REFERENCES species(id) ON UPDATE CASCADE,
  FOREIGN KEY (vets_id) REFERENCES vets(id) ON UPDATE CASCADE
);

CREATE TABLE visits (
  animals_id int NOT NULL,
  vets_id int NOT NULL,
  date_of_visit DATE,
  PRIMARY KEY (animals_id,vets_id,date_of_visit),
  FOREIGN KEY (animals_id) REFERENCES animals(id) ON UPDATE CASCADE,
  FOREIGN KEY (vets_id) REFERENCES vets(id) ON UPDATE CASCADE
);

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX animals_id ON visits (animals_id);

CREATE INDEX vets_id ON visits (vets_id);

CREATE INDEX owners_email ON owners (email);
