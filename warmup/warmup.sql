-- Part 2
-- Create database
CREATE DATABASE IF NOT EXISTS warmup;

-- Create relations
CREATE TABLE IF NOT EXISTS Person (
	pID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    DOB DATE,
    address VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    postalCode CHAR(6),
    citizenship VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(11),
	medicareCardNumber VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Infected_Person (
	pID INT,
    dateOfInfection DATE,
    FOREIGN KEY(pID) REFERENCES Person(pID) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Facility (
	locID INT PRIMARY KEY AUTO_INCREMENT,
    locName VARCHAR(255),
    locType VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    postalCode CHAR(6),
    phone VARCHAR(11),
    web VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Vaccine (
    vacName VARCHAR(255) PRIMARY KEY,
    vacDescription VARCHAR(255),
    vacType VARCHAR(20),
    dateOfApproval DATE,
    dateOfSuspension VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Vaccination (
	vacID INT PRIMARY KEY AUTO_INCREMENT,
	pID INT,
    locID INT,
	vacName VARCHAR(255),
    doseNumber INT,
    vacDate DATE,
    FOREIGN KEY(pID) REFERENCES Person(pID) ON DELETE SET NULL,
    FOREIGN KEY(locID) REFERENCES Facility(locID) ON DELETE SET NULL,
    FOREIGN KEY(vacName) REFERENCES Vaccine(vacName) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Age_Group (
	ageGroup INT PRIMARY KEY,
	minimumAge INT,
    maximumAge INT
);

CREATE TABLE IF NOT EXISTS Age_Group_Vaccination (
	ageGroup INT,
    piD INT,
    vacID INT,
    FOREIGN KEY(ageGroup) REFERENCES Age_Group(ageGroup) ON DELETE SET NULL,
    FOREIGN KEY(piD) REFERENCES Person(piD) ON DELETE SET NULL,
    FOREIGN KEY(vacID) REFERENCES Vaccination(vacID) ON DELETE SET NULL
);



-- Part 3


-- i) Get details of all the people who got vaccinated at least one dose and are of
-- group ages 4 to 10 (first-name, last-name, date of birth, email, phone, city,
-- date of vaccination, vaccination type, been infected by COVID-19 before
-- or not).
SELECT Person.firstName, Person.lastName, Person.DOB, Person.email, Person.phone, Person.city, Vaccination.vacDate, Vaccination.vacName, dateOfInfection
FROM Vaccination
INNER JOIN Person ON Vaccination.pID = Person.pID
LEFT JOIN Infected_Person ON Person.pID = Infected_Person.pID
INNER JOIN Age_Group_Vaccination ON Person.pID = Age_Group_Vaccination.pID
WHERE Age_Group_Vaccination.ageGroup >= 4 AND Age_Group_Vaccination.ageGroup <= 10;


-- ii. Get details of all the Vaccination facilities in Québec (name, address, phone
-- number, web address, type).
SELECT * 
FROM Facility
WHERE province = "Quebec";


-- iii. Get details of all the people who got vaccinated at the Olympic Stadium in
-- Montréal in January 2021 (first-name, last-name, date of birth, email,
-- phone, city, date of vaccination, type of vaccination, group age).
SELECT Person.firstName, Person.lastName, Person.DOB, Person.email, Person.phone, Person.city, Vaccination.vacDate, Vaccination.vacName, Age_Group_Vaccination.ageGroup
FROM Vaccination
INNER JOIN Person ON Vaccination.pID = Person.pID
INNER JOIN Facility ON Vaccination.locID = Facility.locID
INNER JOIN Age_Group_Vaccination ON Person.pID = Age_Group_Vaccination.pID
WHERE Facility.locName = "Olympic Stadium" AND Facility.city = "Montreal" 
AND Vaccination.vacDate >= "2021-01-01" AND Vaccination.vacDate < "2021-02-01";


-- iv. Provide a description of all the vaccinations used in Québec (Name of the
-- vaccination, date of approval of the vaccination, current status of the
-- vaccination, total number of people vaccinated with the vaccination). 
SELECT *
FROM Vaccination
INNER JOIN Vaccine ON Vaccination.vacName = Vaccine.vacName
INNER JOIN Facility ON Vaccination.locID = Facility.locID
WHERE Facility.province = "Quebec";


-- v. Get details of all the people who got vaccinated with a vaccination that is
-- currently suspended (first-name, last-name, date of birth, email, phone, city,
-- date of vaccination, vaccination type, date of suspension of the vaccination).
SELECT Person.firstName, Person.lastName, Person.DOB, Person.email, Person.phone, Person.city, Vaccination.vacDate, Vaccination.vacName, Vaccine.dateOfSuspension
FROM Vaccination
LEFT JOIN Vaccine ON Vaccination.vacName = Vaccine.vacName
INNER JOIN Person ON Vaccination.pID = Person.pID
WHERE Vaccine.vacType = "SUSPENDED";



-- vi. Provide a report of people who got vaccinated by city in all the cities in the
-- province of Québec. The report should include the city name and the
-- number of people vaccinated in each city.
SELECT Facility.city, COUNT(Person.pID) AS number_of_people_vaccinated
FROM Vaccination
INNER JOIN Person ON Vaccination.pID = Person.pID
INNER JOIN Facility ON Vaccination.locID = Facility.locID
WHERE Facility.province = "Quebec" AND Vaccination.doseNumber = 1
GROUP BY Facility.city;



SELECT COUNT(*) FROM Person;
SELECT COUNT(*) FROM Infected_Person;
SELECT COUNT(*) FROM Facility;
SELECT COUNT(*) FROM Vaccine;
SELECT COUNT(*) FROM Vaccination;
SELECT COUNT(*) FROM Age_Group;
SELECT COUNT(*) FROM Age_Group;




