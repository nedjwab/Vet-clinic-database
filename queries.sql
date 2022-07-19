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
COMMIT;

SELECT * from animals;

BEGIN;
DELETE FROM animals;
ROLLBACK;

SELECT * from animals;

BEGIN;
DELETE FROM animals 
WHERE date_of_birth >'2022-01-01'; 

SAVEPOINT birth_savepoint ;

UPDATE animals SET weight_kg=weight_kg*-1 ; 
ROLLBACK TO birth_savepoint;

UPDATE animals SET weight_kg=weight_kg*-1
WHERE weight_kg<0;

COMMIT;

SELECT * from animals;

SELECT count(*)
FROM animals;

SELECT count(*)
FROM animals
WHERE escape_attempts=0;

SELECT AVG(weight_kg)
FROM animals;

SELECT count(escape_attempts),neutered
FROM animals
GROUP BY neutered;

SELECT min(weight_kg),max(weight_kg) ,species
FROM animals
GROUP BY species;