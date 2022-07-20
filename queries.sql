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

SELECT AVG(escape_attempts)
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;

SELECT animals.name
FROM animals
JOIN owners
ON owner_id=owners.id
AND owners.id=4;

SELECT animals.name
FROM animals
INNER JOIN species
ON species_id=species.id
WHERE species.id=1;

SELECT animals.name,full_name
FROM animals
RIGHT JOIN owners ON owners.id = owner_id;


SELECT count(*),species.name 
FROM animals
INNER JOIN species 
ON species_id=species.id
GROUP BY species.name;

SELECT animals.name
FROM animals
INNER JOIN species 
ON species_id=species.id
JOIN owners
ON owners.id=owner_id
WHERE owners.id='2' AND species.id='2';

SELECT animals.name
FROM animals
JOIN owners
ON owners.id = owner_id
WHERE owners.id=5 AND escape_attempts=0;
