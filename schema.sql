/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int not null,
    name text not null,
    date_of_birth date not null,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal,
);

CREATE TABLE owners (
    id  INT PRIMARY KEY ,
    full_name VARCHAR(225),
    Aage INT
);

CREATE TABLE species (
    id  SERIAL UNIQUE ,
    name VARCHAR(225)
);

CREATE TABLE vets (
id INT PRIMARY KEY UNIQUE,
name VARCHAR(225),
age INT,
date_of_graduation DATE
);

CREATE TABLE specialization (
id SERIAL UNIQUE,
vet INT REFERENCES vets(id),
species INT REFERENCES species(id)
);

CREATE TABLE visits (
id SERIAL UNIQUE,
vet INT REFERENCES vets(id),
animal INT REFERENCES animals(id),
visit_date DATE
);


ALTER TABLE owners ADD COLUMN email VARCHAR(120);

/*performance improvement by adding an INDEXs*/
CREATE INDEX idx_animal_id ON visits(animal_id);
CREATE INDEX idx_vet_id ON visits(vet_id);
CREATE INDEX idx_emil_id ON owners(email);

