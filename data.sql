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
