-- Create database
CREATE DATABASE zoo;
USE zoo;

-- Create animals table
CREATE TABLE animals (species varchar(75), quantity int, area varchar(75));

-- Insert animals into animals table
INSERT INTO animals (species, quantity, area)
VALUES
('Pangolin', 2, 'Desert'),
('Sloth', 4, 'Rainforest'),
('Penguin', 21, 'Arctic'),
('Dikdik', 4, 'Desert'),
('Red eye tree frog', 14, 'Rainforest'),
('Desert rain frog', 2, 'Desert'),
('Elephant', 7, 'Desert'),
('Arctic fox', 1, 'Arctic'),
('Wolf', 7, 'Other'),
('Anteater', 1, 'Desert'),
('Tiger', 2, 'Other'),
('Lion', 6, 'Desert'),
('Capybara', 3, 'Rainforest'),
('Okapi', 2, 'Rainforest'),
('Red Panda', 3, 'Other');

-- Adding more animals
INSERT INTO animals (species, quantity, area)
VALUES 
('Cheetah', 2, 'Desert'),
('Komodo Dragon', 1, 'Other'),
('Aardvark', 2, 'Desert'),
('Rock Hyrax', 4, 'Desert'),
('Chimpanzee', 10, 'Rainforest');

-- View All Animals in Animals table
SELECT *
FROM animals;

-- Listing all the different categories in animals table
SELECT area
FROM animals;

-- Listing all the animals found in the area column who are in 'Desert'
SELECT species 
FROM animals
WHERE area='Desert';

-- Number of different species of animals in the 'Rainforest' area
SELECT COUNT(quantity)
FROM animals
WHERE area='Rainforest';

-- Total count of all animals in the 'Rainforest' area
SELECT SUM(quantity)
FROM animals
WHERE area='Rainforest';

-- Three new Chimpanzee's arrive. Update the animals table.
UPDATE animals
SET quantity = 13
WHERE species='Chimpanzee';

-- Create zookeepers table
CREATE TABLE zookeepers (personName varchar(75), age int, area varchar(75));

-- Insert zookeeper workers into zookeepers table
INSERT INTO zookeepers (personName, age, area)
VALUES
('Jane Smith', 34, 'Desert'),
('Max Donald', 42, 'Rainforest'),
('Jessica Hammond', 25, 'Other'),
('Mabel Dayes', 28, 'Rainforest'),
('John Davis', 31, 'Desert'),
('Katie Jones', 33, 'Desert'),
('Lola Jackson', 29, 'Rainforest'),
('Kyle Smith', 38, 'Other'),
('Angie Moore', 45, 'Desert'),
('Maxie Orwell', 36, 'Desert');

-- View All Zookeepers in Zookeepers table
SELECT *
FROM zookeepers;

-- Sorting zookeepers by area column
SELECT *
FROM zookeepers
ORDER BY area;

-- Set default value for area column on zookeepers table
ALTER TABLE zookeepers
ALTER area SET DEFAULT 'Other';

-- Change animals table so area column cannot be null
ALTER TABLE animals
MODIFY area varchar(75) NOT NULL;

-- Change zookeepers table so area column cannot be null
ALTER TABLE zookeepers
MODIFY area varchar(75) NOT NULL;

-- Add primary key to zookeepers table
ALTER TABLE zookeepers
ADD PRIMARY KEY (area);
