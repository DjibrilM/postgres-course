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
