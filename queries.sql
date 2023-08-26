/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';
SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE EXTRACT(YEAR FROM date_of_birth) BETWEEN 2016 AND 2019;
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3 ;
SELECT name FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name <> 'Gabumon';
ALTER TABLE animals ADD COLUMN species varchar(255);
SELECT * FROM animals WHERE weight_kg > 10.4 OR weight_kg < 17.3 OR weight_kg = 10.4 AND  weight_kg = 17.3;

BEGIN;
UPDATE animals
SET species = 'unspecified'; 
SELECT species from animals;
ROLLBACK;

SELECT species from animals; 

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
COMMIT;

BEGIN;
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

SELECT species from animals; 

BEGIN;
DELETE FROM animals;
ROLLBACK;

BEGIN;
DELETE FROM animals WHERE EXTRACT(MONTH FROM date_of_birth) > 1;
SAVEPOINT almighty_savepoint;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO almighty_savepoint;

BEGIN;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT * FROM animals WHERE escape_attempts = 0;
SELECT * FROM animals AVG(weight_kg);
SELECT neutered, AVG(escape_attempts) AS average_escape_count
FROM animals
GROUP BY neutered;

SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals
   GROUP BY species;

SELECT * FROM animals MIN(escape_attempts) WHERE EXTRACT(YEAR FROM date_of_birth) > 1990 AND EXTRACT(YEAR FROM date_of_birth) < 2000;

ALTER TABLE animals 
ADD CONSTRAINT fk_constraint_name
FOREIGN KEY (owner_id)
REFERENCES owners(id);

ALTER TABLE animals  /*transform species into a foreign key*/
ADD CONSTRAINT spacie_constriant_name  
FOREIGN KEY (species)
REFERENCES species(id);

SELECT * FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT * FROM animals INNER JOIN species ON animals.species = species.id WHERE species.name = 'Pokemon';

SELECT COUNT(id) AS sum_of_ids FROM animals GROUP BY species;
SELECT s.species_name, a.species, a.animal_count

SELECT s.name, a.species, a.animal_count
FROM species s
INNER JOIN (
    SELECT species, COUNT(*) AS animal_count
    FROM animals
    GROUP BY species
) a ON s.id = a.species
ORDER BY a.animal_count DESC;


SELECT *
FROM owners o
JOIN animals a ON o.id = a.owner_id
WHERE o.full_name = 'Dean Winchester'
AND (a.escape_attempts IS NULL OR a.escape_attempts = 0);

SELECT o.id, o.full_name, COUNT(*) AS animal_count
FROM owners o
JOIN animals a ON o.id = a.owner_id
GROUP BY o.id, o.full_name
ORDER BY animal_count DESC
LIMIT 1;