/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals 
WHERE name like '%mon';

SELECT name from animals 
WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';

SELECT name from animals 
WHERE neutered='true' AND escape_attempts<3;

SELECT date_of_birth from animals 
WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name,escape_attempts from animals 
WHERE weight_kg>10.5;

SELECT * from animals 
WHERE neutered='true';

SELECT * from animals 
WHERE name !='Gabumon';

SELECT * from animals 
WHERE weight_kg>=10.4 AND  weight_kg<=17.3;

BEGIN;
UPDATE animals 
SET species='unspecified';

SELECT * from animals;

ROLLBACK;

SELECT name,species from animals;


BEGIN;
UPDATE animals SET species='digimon' 
WHERE name like '%mon';

UPDATE animals SET species='pokemon' 
WHERE species IS NULL;

SELECT * from animals;
