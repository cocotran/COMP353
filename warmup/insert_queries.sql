-- Person
INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname1', 'fname2', '2000-01-01', "address1", "Montreal", "Quebec", "H1H1A1", "Canadian", "email1@gmail.com", "1234567890", "0123456789"
);

INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname2', 'fname2', '1999-04-01', "address2", "Montreal", "Quebec", "H1H1A1", "Canadian", "email2@gmail.com", "1235667890", "0123432789"
);

INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname3', 'fname3', '2000-01-14', "address3", "Montreal", "Quebec", "H1H1A2", "Canadian", "email3@gmail.com", "1904567890", "0123456700"
);

INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname4', 'fname4', '2000-01-30', "address1", "Montreal", "Quebec", "H3H1A1", "Canadian", "email4@gmail.com", "3334567890", "0123116789"
);

INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname5', 'fname5', '2000-05-01', "address1", "Montreal", "Quebec", "H1H1A1", "Canadian", "email5@gmail.com", "3214567890", "0123226789"
);

INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname6', 'fname6', '2000-12-01', "address6", "Montreal", "Quebec", "H1H1A6", "Canadian", "email6@gmail.com", "6234567890", "6123456789"
);

INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname7', 'fname7', '2000-01-17', "address1", "Montreal", "Quebec", "H7H1A1", "Canadian", "email7@gmail.com", "1234567790", "0123776789"
);

INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname8', 'fname8', '2000-08-01', "address8", "Montreal", "Quebec", "H1H8A1", "Canadian", "email8@gmail.com", "8834567890", "0123456888"
);

INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname9', 'fname9', '2000-01-09', "address9", "Montreal", "Quebec", "H1H1A9", "Canadian", "email9@gmail.com", "1234567899", "0123456999"
);

INSERT INTO Person(firstName, lastName, DOB, address, city, province, postalCode, citizenship, email, phone, medicareCardNumber)
VALUES
(
'fname10', 'fname10', '2000-10-10', "address10", "Montreal", "Quebec", "H2H2A2", "Canadian", "email10@gmail.com", "1034567890", "0103456789"
);


-- Infected Person
INSERT INTO Infected_Person
VALUES
(
	1, "2020-01-05"
);

INSERT INTO Infected_Person
VALUES
(
	2, "2020-03-05"
);

INSERT INTO Infected_Person
VALUES
(
	2, "2021-03-05"
);

INSERT INTO Infected_Person
VALUES
(
	4, "2020-03-05"
);

INSERT INTO Infected_Person
VALUES
(
	4, "2020-03-02"
);

INSERT INTO Infected_Person
VALUES
(
	5, "2020-08-05"
);

INSERT INTO Infected_Person
VALUES
(
	6, "2021-03-05"
);

INSERT INTO Infected_Person
VALUES
(
	7, "2021-01-05"
);

INSERT INTO Infected_Person
VALUES
(
	8, "2020-05-05"
);

INSERT INTO Infected_Person
VALUES
(
	8, "2021-12-05"
);




-- Facility
INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location1", "hospital", "address1", "Montreal", "Quebec", "H1H1A1", "1234567890", "web1.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location2", "hospital", "address2", "Montreal", "Quebec", "H2H1A1", "2234567890", "web2.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location3", "hospital", "address3", "Montreal", "Quebec", "H3H3A1", "2334567890", "web3.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location4", "clinic", "address4", "Montreal", "Quebec", "H2H4A4", "4434567890", "web4.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location5", "hospital", "address5", "Montreal", "Quebec", "H2H5A5", "2235567890", "web5.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location6", "clinic", "address6", "Montreal", "Quebec", "H2H1S1", "6234567890", "web6.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location7", "clinic", "address7", "Montreal", "Quebec", "H7H1A1", "7234567890", "web7.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location8", "clinic", "address8", "Montreal", "Quebec", "H2H8A8", "2234567888", "web8.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location9", "hospital", "address9", "Montreal", "Quebec", "H9H9A1", "9934567890", "web9.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"location10", "special installment", "address10", "Montreal", "Quebec", "H1A1A1", "2234567810", "web10.com"
);

INSERT INTO Facility(locName, locType, address, city, province, postalCode, phone, web)
VALUES
(
	"Olympic Stadium", "special installment", " Olympic Stadium", "Montreal", "Quebec", "H1A1A1", "2234567810", " olympic_stadium.com"
);



-- Vaccine
INSERT INTO Vaccine
VALUES
(
	"Pfizer", "Pfizer", "SAFE", "2021-01-01", NULL
);

INSERT INTO Vaccine
VALUES
(
	"Moderna", "Moderna", "SAFE", "2021-01-01", NULL
);

INSERT INTO Vaccine
VALUES
(
	"AstraZeneca", "AstraZeneca", "SAFE", "2021-01-01", NULL
);

INSERT INTO Vaccine
VALUES
(
	"Johnson & Johnson", "Johnson & Johnson", "SAFE", "2021-01-01", NULL
);

INSERT INTO Vaccine
VALUES
(
	"Sinovac", "Sinovac", "SUSPENDED", NULL, "2021-01-01"
);

INSERT INTO Vaccine
VALUES
(
	"Vac1", "Vac1", "SUSPENDED", NULL, "2021-01-01"
);

INSERT INTO Vaccine
VALUES
(
	"Vac2", "Vac2", "SUSPENDED", NULL, "2021-01-01"
);

INSERT INTO Vaccine
VALUES
(
	"Vac3", "Vac3", "SUSPENDED", NULL, "2021-01-01"
);

INSERT INTO Vaccine
VALUES
(
	"Vac4", "Vac4", "SUSPENDED", NULL, "2021-01-01"
);

INSERT INTO Vaccine
VALUES
(
	"Vac5", "Vac5", "SUSPENDED", NULL, "2021-01-01"
);



-- Vaccination
INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	1, 1, "Pfizer", 1, "2021-05-01"
);

INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	2, 3, "Pfizer", 1, "2021-05-01"
);

INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	3, 5, "Pfizer", 1, "2021-05-01"
);

INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	4, 1, "Pfizer", 1, "2021-05-01"
);

INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	5, 2, "Pfizer", 1, "2021-05-01"
);

INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	6, 6, "Moderna", 1, "2021-05-01"
);

INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	7, 1, "Moderna", 1, "2021-05-01"
);

INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	8, 11, "Pfizer", 1, "2021-05-01"
);

INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	9, 11, "Pfizer", 2, "2021-01-28"
);

INSERT INTO Vaccination(pID, locID, vacName, doseNumber, vacDate)
VALUES
(
	10, 11, "Pfizer", 2, "2021-01-30"
);


-- Age Group
INSERT INTO Age_Group
VALUES
(
1, 80, 120
);

INSERT INTO Age_Group
VALUES
(
2, 70, 79
);

INSERT INTO Age_Group
VALUES
(
3, 60, 69
);

INSERT INTO Age_Group
VALUES
(
4, 50, 59
);

INSERT INTO Age_Group
VALUES
(
5, 40, 49
);

INSERT INTO Age_Group
VALUES
(
6, 30, 39
);

INSERT INTO Age_Group
VALUES
(
7, 18, 29
);

INSERT INTO Age_Group
VALUES
(
8, 12, 17
);

INSERT INTO Age_Group
VALUES
(
9, 5, 11
);

INSERT INTO Age_Group
VALUES
(
10, 0, 4
);

-- Age_Group
INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 1, 1
);

INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 2, 2
);

INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 3, 3
);

INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 4, 4
);

INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 5, 5
);

INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 6, 6
);

INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 7, 7
);

INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 8, 8
);

INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 9, 9
);

INSERT INTO Age_Group_Vaccination
VALUES
(
	7, 10, 10
);














