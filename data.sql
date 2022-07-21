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
