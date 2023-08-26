/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (1,'Agumon', 'feb-3-2020',0,false,10.23);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (2,'Gabumon', 'nov-15-2018',2,true, 8);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (3,'Pikachu', 'jan-7-2021,',1,true, 15.04);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (4,'Devimon', 'may-12-2017',5,true, 11);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (5,'Charmander','feb-8-2020',0,false,11),
(6,'Plantmon','nov-15-2021',2,true,5.7),
(7,'Squirtle','apr-2-1993',3,false,12.13),
(8,'Angemon','jun-12-2005,',1,true,45),
(9,'Boarmon', 'jun-7-2005',7,true,20.4),
(10,'Blossom', 'oct-13-1998',3,true,17),
(11,'Ditto', 'may-14-2022,',4,true,22);

INSERT INTO owners (id,full_name,age) VALUES (1,'Sam Smith',34),
(2,'Jennifer Orwell',19),
(3,'Bob',45),
(4,'Melody Pond',77),
(5,'Dean Winchester',14),
(6,'Jodie Whittaker',38);

INSERT INTO species (name) VALUES ('Pokemon'),('Digimon');
INSERT INTO vets (id,name,age,date_of_graduation) VALUES(1,'William Tatcher',45,'apr-23-2000')
,(2,'Maisy Smith',26,' Jan-17-2019'),
(3,'Stephanie Mendez',64,'may-4-1981'),
(4,'Jack Harkness ',38,'jun-8-2008');

INSERT INTO specialization(vet,species) VALUES(1,1);
INSERT INTO specialization(vet,species) VALUES(3,1);
INSERT INTO specialization(vet,species) VALUES(3,2); 
INSERT INTO specialization(vet,species) VALUES(4,2);
INSERT INTO visits(animal,vet,visit_date) VALUES (1,1,'may-24-2020'),
(1,3,' Jul-22-2020'),
(2,4,'feb-2-2021'),
(3,2,'jan-5-2020'),
(3,2,'mar-8-2020'),
(3,2,'may-14-2020'),
(4,3,'may-4-2021'),
(5,4,'feb-24-2021'),
(6,2,'dec-21-2019'),
(6,2,'aug-10-2020'),
(6,2,'apr-7-2021'),
(7,3,'sep-29-2019'),
(1,4,'oct-3-2020'),
(8,4,'nov-4-2020'),
(9,2,'Jan-24-2019'),
(9,2,'may-15-2019'),
(9,2,'feb-27-2020'),
(9,2,'aug-3-2020'),
(9,3,'may-24-2020'),
(9,1,'Jan-11-2021');