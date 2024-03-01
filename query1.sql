CREATE TABLE people (
	id INT NOT NULL AUTO_INCREMENT,
    propertyID INT,
    forename VARCHAR(255),
    surname VARCHAR(255),
    age INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO people (forename, surname, age, propertyID)
VALUES
	("Joe", "Bloggs", 20, 1),
	("John", "Smith", 21, 2),
	("Jane", "Doe", 22, 1),
	("Adam", "Alexson", 22, 1),
    ("Carl", "Jones", 29, 3);



UPDATE people
SET surname="UPDATED"
WHERE id=2;

DELETE FROM people
WHERE id=2;


SELECT * FROM people
WHERE age = 25;

SELECT * FROM people
ORDER BY surname ASC;

SELECT * FROM people
ORDER BY surname DESC;

CREATE TABLE properties (
	id INT NOT NULL AUTO_INCREMENT,
    tenantid INT NOT NULL,
    street VARCHAR(255),
    city VARCHAR(255),
    postcode VARCHAR(255),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS properties;
DROP TABLE IF EXISTS people;

INSERT INTO properties (tenantid, street, city, postcode)
VALUES
	(1, "ABC Street", "London", "LL21"),
	(2, "EFG Street", "Newcastle", "LL22"),
	(3, "HIJ Street", "London", "LL23");

SELECT forename FROM people
UNION
SELECT street FROM properties;

SELECT * FROM properties WHERE city = "London";

SELECT * FROM people, properties WHERE properties.id = people.propertyID;


SELECT people.*, properties.street, properties.city FROM people, properties WHERE people.propertyID = properties.id;





-- my shit irrelevant
SELECT people.forename, people.surname, properties.street
FROM people
INNER JOIN properties ON people.id=properties.tenantid;


DROP TABLE IF EXISTS people_friends;

CREATE TABLE people_friends(
	personID INT(11),
    friendID INT(11)
);

INSERT INTO people_friends (personID, friendID)
VALUES 
	(3,2),
    (3,1);

SELECT * FROM people_friends;
SELECT * FROM people;
SELECT people_friends.personID, people.id, people.forename, people.surname FROM people, people_friends WHERE people_friends.friendID = people.id;

