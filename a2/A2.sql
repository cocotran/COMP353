CREATE DATABASE IF NOT EXISTS A2;

-- Part 1
CREATE TABLE IF NOT EXISTS HSO_Location (
	locID INT PRIMARY KEY AUTO_INCREMENT,
    locName VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    postalCode CHAR(6),
    province VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Employee (
	eID INT PRIMARY KEY AUTO_INCREMENT,
    SSN VARCHAR(9),
	firstName VARCHAR(255),
    lastName VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    postalCode CHAR(6),
    province VARCHAR(255),
    phone VARCHAR(11),
    email VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Employment (
	eID INT,
    locID INT,
    startDate DATE,
    endDate DATE,
    FOREIGN KEY(eID) REFERENCES Employee(eID) ON DELETE SET NULL,
    FOREIGN KEY(locID) REFERENCES HSO_Location(locID) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Manager (
	locID INT PRIMARY KEY,
    eID INT,
    FOREIGN KEY(eID) REFERENCES Employee(eID) ON DELETE SET NULL,
    FOREIGN KEY(locID) REFERENCES HSO_Location(locID)
);

CREATE TABLE IF NOT EXISTS Animals (
	aID INT PRIMARY KEY AUTO_INCREMENT,
    aType VARCHAR(255),
    gender VARCHAR(10),
    chipNo INT UNIQUE
);

CREATE TABLE IF NOT EXISTS Admission (
	aID INT,
    locID INT,
    eID INT,
    dateAdmitted DATE,
    prevOwnerSIN VARCHAR(9),
    FOREIGN KEY(aID) REFERENCES Animals(aID) ON DELETE SET NULL,
    FOREIGN KEY(locID) REFERENCES HSO_Location(locID) ON DELETE SET NULL,
    FOREIGN KEY(eID) REFERENCES Employee(eID) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Adopter (
	SIN VARCHAR(9) PRIMARY KEY,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    postalCode CHAR(6),
    province VARCHAR(255),
    phone VARCHAR(11),
    animalCount TINYINT
);

CREATE TABLE IF NOT EXISTS Adoption (
	aID INT,
    SIN VARCHAR(9),
    eID INT,
    adoptDate DATE,
    FOREIGN KEY(aID) REFERENCES Animals(aID) ON DELETE SET NULL,
    FOREIGN KEY(SIN) REFERENCES Adopter(SIN) ON DELETE SET NULL,
    FOREIGN KEY(eID) REFERENCES Employee(eID) ON DELETE SET NULL
);



--  Part II
-- a) List the details of all employees including managers of the organization who live in the
-- city of Laval. Details include: EID, SSN, First Name, Last Name and address.
SELECT eID, SSN, firstName, lastName, address 
FROM Employee
WHERE city = "Laval";

-- b) For every location, and for every employee working at that location, list the total number
-- of animals the employee has received (admitted).
SELECT * 
FROM Employment
INNER JOIN Employee ON Employment.eID = Employee.eID
INNER JOIN Employment ON Employment.locID = HSO_Location.locID;


-- c) Give the history details of employment for “Roger McDonald” with the organization.
-- Details include the location Name, start date and end date. The results should be sorted in
-- ascending order by start date then by end date (earliest date to latest date).
SELECT Employment.eID, HSO_Location.locID, HSO_Location.locName, startDate, endDate
FROM Employment
INNER JOIN Employee ON Employment.eID = Employee.eID
INNER JOIN Employment ON Employment.locID = HSO_Location.locID
WHERE Employee.firstName = "Roger" AND Employee.lastName = "McDonald";


-- d) The adopter “Alfred Simpson” have problems with the adoption he has done on “Jan-5-
-- 2021”. Give the first name, last name, phone and email of the manager of the location
-- where the adoption occurred.
SELECT *
FROM Adoption
INNER JOIN Adopter ON Adoption.SIN = Adopter.SIN
INNER JOIN HSO_Location ON Adoption.locID = HSO_Location.locID
WHERE Adopter.firstName = "Alfred" AND Adopter.lastName = "Simpson" AND Adoption.adoptDate = "2021-01-05";









