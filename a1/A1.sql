CREATE DATABASE IF NOT EXISTS A1;
-- PART I
-- a) Write SQL “CREATE TABLE” statements for the above schema
CREATE TABLE IF NOT EXISTS HSO_Location (
	locID INT PRIMARY KEY,
    locName VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    postalCode CHAR(6),
    province VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Animals (
	animalID INT PRIMARY KEY,
    aType VARCHAR(255),
    gender VARCHAR(255),
    chipNo INT UNIQUE
);

CREATE TABLE IF NOT EXISTS Admission (
	animalID INT,
    dateAdmitted DATE,
    locID INT,
    prevOwnerSIN VARCHAR(9),
    FOREIGN KEY(locID) REFERENCES HSO_Location(locID) ON DELETE SET NULL,
    FOREIGN KEY(animalID) REFERENCES Animals(animalID) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Adopter (
	SIN VARCHAR(9) PRIMARY KEY,
    adName VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    postalCode CHAR(6),
    province VARCHAR(255),
    phone VARCHAR(11),
    animalCount TINYINT
);

CREATE TABLE IF NOT EXISTS Adoption (
	animalID INT,
    SIN VARCHAR(9),
    adoptDate DATE,
    FOREIGN KEY(animalID) REFERENCES Animals(animalID) ON DELETE SET NULL,
    FOREIGN KEY(SIN) REFERENCES Adopter(SIN) ON DELETE SET NULL
);

-- b) A declaration to alter the Adopter relation schema by deleting the attribute phone
ALTER TABLE Adopter 
DROP COLUMN phone;
    
-- c) Provide three INSERT statements with data that will populate the table Adopter
INSERT INTO Adopter (SIN, adName, address, city,  postalCode, province, phone, animalCount)
VALUES
	("000000001", "John Doe", "123 rue Maisonneuve", "Montreal", "H3G1M8", "QC", "514123456", 0),
    ("000000002", "Karen Doe", "456 rue St. Marc", "Montreal", "H3H2N3", "QC", "579123456", 2),
    ("000000003", "Ken Doe", "789 rue St. Catherine", "Montreal", "H3S5P9", "QC", "438123456", 1)
 ;
 
-- e) Provide SQL statements that delete all data that you populated in table Adopter
DELETE FROM Adopter;
 
 -- f) Provide several SQL statements that delete all tables that you created in the database
DROP DATABASE A1;
CREATE DATABASE A1;

USE A1;
SELECT  'DROP TABLE [' + name + '];'
FROM    a1.tables;


-- Part II
-- a) List the information of all Female dogs (aID, type, chipNo, AdopterName)
SELECT Animals.animalId, Animals.aType, Animals.chipNo, Adopter.adName
FROM Animals
LEFT JOIN Adoption ON Animals.animalID = Adoption.animalID
INNER JOIN Adopter ON Adoption.SIN = Adopter.SIN
WHERE Animals.gender = 'Female';


-- b) For the type of animals who have at least 20 of that type admitted by the HSO, List the
-- total number of animals that have been admitted by that type. If the same animal has been
-- admitted more than once, then count each admission of the same animal
SELECT COUNT(Admission.animalID) 
FROM Admission
INNER JOIN Animals ON Admission.animalID = Animals.animalID
WHERE COUNT(Animals.aType) >= 20;


-- c) For each city, list the total number of animals that the Adopters have before their last
-- adoption. Display the results in increasing order by city 
SELECT SUM(animalCount) AS animalSum
FROM Adopter
GROUP BY city
ORDER BY animalSum;

-- d) Retrieve the total number of animals that were admitted by HSO on Dec 31 2020
SELECT COUNT(animalID)
FROM Admission
WHERE dateAdmitted='2020-12-31';

-- e) For each animal type, list the animal type and the total number of adoptions since Jan 1, 2010
SELECT Animals.aType, COUNT(Adoption.animalID)
FROM Animals
JOIN Adoption ON Animals.animalID = Adoption.animalID
WHERE Adoption.adoptDate >= '2010-01-01';



