-- PART I
-- a) Write SQL “CREATE TABLE” statements for the above schema
CREATE TABLE IF NOT EXISTS hso_location (
	locID INT,
    locName VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    postalCode CHAR(6),
    province VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS animals (
	aID INT,
    aType VARCHAR(255),
    gender VARCHAR(255),
    chipNo INT
);

CREATE TABLE IF NOT EXISTS admission (
	animalID INT,
    dateAdmitted DATE,
    locID INT,
    prevOwnerSIN VARCHAR(9)
);

CREATE TABLE IF NOT EXISTS adopter (
	SIN VARCHAR(9),
    adName VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    postalCode CHAR(6),
    province VARCHAR(255),
    phone VARCHAR(11),
    animalCount TINYINT
);

CREATE TABLE IF NOT EXISTS adoption (
	animalID INT,
    SIN VARCHAR(9),
    adoptDate DATE
);

-- b) A declaration to alter the Adopter relation schema by deleting the attribute phone
 ALTER TABLE adopter 
	DROP COLUMN phone;
    
-- c) Provide three INSERT statements with data that will populate the table Adopter
INSERT INTO adopter 
VALUES
	("000000001", "John Doe", "123 rue Maisonneuve", "Montreal", "H3G 1M8", "QC", "514123456", 0),
    ("000000002", "Karen Doe", "456 rue St. Marc", "Montreal", "H3H 2N3", "QC", "579123456", 2),
    ("000000003", "Ken Doe", "789 rue St. Catherine", "Montreal", "H3S 5P9", "QC", "438123456", 1)
 ;
-- e) Provide SQL statements that delete all data that you populated in table Adopter
DELETE FROM adopter;
 
 -- f) Provide several SQL statements that delete all tables that you created in the database
DROP DATABASE A1;
CREATE DATABASE A1;

USE A1;
SELECT  'DROP TABLE [' + name + '];'
FROM    sys.tables;


-- Part II
-- a) List the information of all Female dogs (aID, type, chipNo, AdopterName)