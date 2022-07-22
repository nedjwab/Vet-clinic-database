/* Populate database with sample data. */

INSERT INTO animals (name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES ('Agumon','2020-02-03',10.23,true,0);
INSERT INTO animals (name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES ('Gabumon','2018-11-15',8,true,2);
INSERT INTO animals (name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES ('Pikachu','2021-01-07',15.04,false,1);
INSERT INTO animals (name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES ('Devimon','2017-05-12',11,true,5);
INSERT INTO animals (name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES 
('Charmander','2020-02-08',-11,false,0),
('Plantmon','2021-11-15',-5.7,true,2),
('Squirtle','1993-04-02',-12.13,false,3),
('Angemon','2005-06-12',-45,true,1),
('Boarmon','2005-06-07',20.4,true,7),
('Blossom','1998-10-13',17,true,3),
('Ditto','2022-05-14',22,true,4);

INSERT INTO owners (full_name,age) VALUES 
('Sam Smith',34),
('Jennifer Orwell',19),
('Bob',45),
('Melody Pond',77),
('Dean Winchester',14),
('Jodie Whittaker',38);

INSERT INTO species (name) VALUES 
('Pokemon'),
('Digimon');

UPDATE animals SET species_id=1;
UPDATE animals SET species_id=2
WHERE name like '%mon';

UPDATE animals SET owner_id=1
WHERE name='Agumon';

UPDATE animals SET owner_id=2
WHERE name='Gabumon' OR name='Pikachu';

UPDATE animals SET owner_id=3
WHERE name='Devimon' OR name='Plantmon';

UPDATE animals SET owner_id=4
WHERE name='Charmander' OR name='Squirtle' OR name='Blossom';

UPDATE animals SET owner_id=5
WHERE name='Angemon' OR name='Boarmon';

INSERT INTO vets (name,age,date_of_graduation) VALUES 
('William Tatcher',45,'2000-04-23'),
('Maisy Smith',26,'2019-01-17'),
('Stephanie Mendez',64,'1981-05-04'),
('Jack Harkness',38,'2008-06-08');

INSERT INTO specializations VALUES 
((SELECT id FROM species WHERE name='Pokemon'),(SELECT id FROM vets WHERE name='William Tatcher')),
((SELECT id FROM species WHERE name='Pokemon'),(SELECT id FROM vets WHERE name='Stephanie Mendez')),
((SELECT id FROM species WHERE name='Digimon'),(SELECT id FROM vets WHERE name='Stephanie Mendez')),
((SELECT id FROM species WHERE name='Digimon'),(SELECT id FROM vets WHERE name='Jack Harkness'));

INSERT INTO visits VALUES
((SELECT id FROM animals WHERE name='Agumon'),(SELECT id FROM vets WHERE name='William Tatcher'),'2020-05-24'),
((SELECT id FROM animals WHERE name='Agumon'),(SELECT id FROM vets WHERE name='Stephanie Mendez'),'2020-07-22'),
((SELECT id FROM animals WHERE name='Gabumon'),(SELECT id FROM vets WHERE name='Jack Harkness'),'2021-02-02'),
((SELECT id FROM animals WHERE name='Pikachu'),(SELECT id FROM vets WHERE name='Maisy Smith'),'2020-01-05'),
((SELECT id FROM animals WHERE name='Pikachu'),(SELECT id FROM vets WHERE name='Maisy Smith'),'2020-03-08'),
((SELECT id FROM animals WHERE name='Pikachu'),(SELECT id FROM vets WHERE name='Maisy Smith'),'2020-05-14'),
((SELECT id FROM animals WHERE name='Devimon'),(SELECT id FROM vets WHERE name='Stephanie Mendez'),'2021-05-04'),
((SELECT id FROM animals WHERE name='Charmander'),(SELECT id FROM vets WHERE name='Jack Harkness'),'2021-02-24'),
((SELECT id FROM animals WHERE name='Plantmon'),(SELECT id FROM vets WHERE name='Maisy Smith'),'2021-12-21'),
((SELECT id FROM animals WHERE name='Plantmon'),(SELECT id FROM vets WHERE name='William Tatcher'),'2020-08-10'),
((SELECT id FROM animals WHERE name='Plantmon'),(SELECT id FROM vets WHERE name='Maisy Smith'),'2021-04-07'),
((SELECT id FROM animals WHERE name='Squirtle'),(SELECT id FROM vets WHERE name='Stephanie Mendez'),'2019-09-29'),
((SELECT id FROM animals WHERE name='Angemon'),(SELECT id FROM vets WHERE name='Jack Harkness'),'2020-10-03'),
((SELECT id FROM animals WHERE name='Angemon'),(SELECT id FROM vets WHERE name='Jack Harkness'),'2020-11-04'),
((SELECT id FROM animals WHERE name='Boarmon'),(SELECT id FROM vets WHERE name='Maisy Smith'),'2019-01-24'),
((SELECT id FROM animals WHERE name='Boarmon'),(SELECT id FROM vets WHERE name='Maisy Smith'),'2019-05-15'),
((SELECT id FROM animals WHERE name='Boarmon'),(SELECT id FROM vets WHERE name='Maisy Smith'),'2020-02-27'),
((SELECT id FROM animals WHERE name='Boarmon'),(SELECT id FROM vets WHERE name='Maisy Smith'),'2020-08-03'),
((SELECT id FROM animals WHERE name='Blossom'),(SELECT id FROM vets WHERE name='Stephanie Mendez'),'2020-05-24'),
((SELECT id FROM animals WHERE name='Blossom'),(SELECT id FROM vets WHERE name='William Tatcher'),'2021-01-11');