DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS movie_links;


CREATE TABLE movie (
	movieID INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(255),
    releasedate INT NOT NULL,
    star VARCHAR(255),
    award BOOLEAN,
    rating FLOAT,
    genre VARCHAR(255),
    PRIMARY KEY (movieID)
);

INSERT INTO movie (title, releasedate, star, award, rating, genre)
VALUES
("Dune 2", 2024, "Timothee Chalamet", FALSE, 9.1, "Sci-Fi"),
("Madame Web", 2024, "Dakota Johnson", FALSE, 3.8, "Superhero"),
("Anyone But You", 2024, "Sydney Sweeney", FALSE, 6.3, "Rom-Com"),
("The Shawshank Redemption", 1994, "Morgan Freeman", TRUE, 9.3, "Thriller"),
("Wreck It Ralph", 2012, "John C. Reilly", TRUE, 7.7, "Animated"),
("Forrest Gump", 1994, "Tom Hanks", TRUE, 8.8, "Comedy"),
("Sully", 2016, "Tom Hanks", TRUE, 7.4, "Documentary"),
("The Da Vinci Code", 2006, "Tom Hanks", FALSE, 6.6, "Mystery"),
("Toy Story", 1995, "Tom Hanks", TRUE, 8.3, "Animated"),
("Wonka", 2023, "Timothee Chalamet", FALSE, 7.1, "Family"),
("Little Women", 2023, "Saoirse Ronan", TRUE, 7.8, "Romance"),
("Lady Bird", 2017, "Saoirse Ronan", FALSE, 7.4, "Romance"),
("Bruce Almighty", 2003, "Jim Carrey", FALSE, 6.8, "Comedy"),
("The Bucket List", 2007, "Morgan Freeman", FALSE, 7.4, "Comedy"),
("Now You See Me", 2013, "Jesse Eisenberg", TRUE, 7.2, "Thriller");





CREATE TABLE actors (
	actorID INT NOT NULL,
	forename VARCHAR(255),
    surname VARCHAR(255),
    age INT NOT NULL
);

INSERT INTO actors (actorID, forename, surname, age)
VALUES
(1, "Timothee", "Chalamet", 28),
(2, "Dakota", "Johnson", 34),
(3, "Sydney", "Sweeney", 26),
(4, "Morgan", "Freeman", 86),
(5, "John C. ", "Reilly", 58),
(6, "Tom", "Hanks", 67),
(7, "Saoirse", "Ronan", 29),
(8, "Austin", "Butler", 32),
(9, "Florence", "Pugh", 28),
(10, "Zendaya", "Coleman", 27),
(11, "Emma", "Roberts", 33),
(12, "Emma", "Watson", 33),
(13, "Jim", "Carrey", 62),
(14, "Jennifer", "Aniston", 55),
(15, "Jesse", "Eisenberg", 40);







CREATE TABLE characters (
	characterID INT NOT NULL,
	forename VARCHAR(255),
    surname VARCHAR(255),
    movie VARCHAR(255)
);

INSERT INTO characters (characterID, forename, surname, movie)
VALUES
(1, "Paul", "Atreides", "Dune 2"),
(2, "Madame", "Web", "Madame Web"),
(3, "Bea", "Belle", "Anyone But You"),
(4,"Ellis Boyd", "Redding", "The Shawshank Redemption"),
(5, "Ralph", "Wreck-it", "Wreck It Ralph"),
(6, "Forrest", "Gump", "Forrest Gump"),
(7, "Feyd-Rautha", "Harkonnen", "Dune 2"),
(8, "Princess", "Irulan", "Dune 2"),
(9, "Chani", "Fighter", "Dune 2"),
(10, "Julia", "Carpenter", "Madame Web"),
(11, "Mary", "Parker", "Madame Web"),
(12, "Jo", "March", "Little Women"),
(13, "Amy", "March", "Little Women"),
(14, "Theodore", "Laurence", "Little Women"),
(15, "Meg", "March", "Little Women"),
(16, "Chesley", "Sullenberger", "Sully"),
(17, "Robert", "Langdon", "The Da Vinci Code"),
(18, "Woody", "The Cowboy", "Toy Story"),
(19, "Willy", "Wonka", "Wonka"),
(20, "Christine", "McPherson", "Lady Bird"),
(21, "Kyle", "Scheible", "Lady Bird"),
(22, "God", "", "Bruce Almighty"),
(23, "Bruce", "Nolan", "Bruce Almighty"),
(24, "Grace", "Connelly", "Bruce Almighty"),
(25, "Carter", "Chambers", "The Bucket List"),
(26, "J. Daniel", "Atlas", "Now You See Me"),
(27, "Thaddeus", "Bradley", "Now You See Me");







CREATE TABLE movie_links (
movieID INT NOT NULL, 
actorID INT NOT NULL, 
characterID INT NOT NULL, 
details JSON NULL,
PRIMARY KEY (movieID, actorID, characterID)
); 


INSERT INTO movie_links (movieID, actorID, characterID, details)
VALUES 
(1, 1, 1, '{"pay": 900, "roles":{"primary":"hero", "secondary":"extra"}}'),
(1, 8, 7, '{"pay": 900, "roles":{"primary":"hero", "secondary":"extra"}}'),
(1, 9, 8, '{"pay": 900, "roles":{"primary":"hero", "secondary":"extra"}}'),
(1, 10, 9, '{"pay": 900, "roles":{"primary":"hero", "secondary":"extra"}}'),

(2, 2, 2, '{"pay": 300, "roles":{"primary":"hero", "secondary":"villain"}}'),
(2, 3, 10, '{"pay": 300, "roles":{"primary":"hero", "secondary":"villain"}}'),
(2, 11, 11, '{"pay": 300, "roles":{"primary":"hero", "secondary":"villain"}}'),


(3, 3, 3, '{"pay": 500, "roles":{"primary":"jock", "secondary":"cheerleader"}}'),

(4, 4, 4, '{"pay": 1700, "roles":{"primary":"murderer", "secondary":"prisoner"}}'),

(5, 5, 5, '{"pay": 1200, "roles":{"primary":"villain", "secondary":"racer"}}'),

(6, 6, 6, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),

(7, 6, 16, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),

(8, 6, 17, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),

(9, 6, 18, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),

(10, 1, 19, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),

(11, 1, 14, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),
(11, 7, 12, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),
(11, 9, 13, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),
(11, 12, 15, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),

(12, 7, 20, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),
(12, 1, 21, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),

(13, 4, 22, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),
(13, 13, 23, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),
(13, 14, 24, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),

(14, 4, 25, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),

(15, 15, 26, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}'),
(15, 4, 27, '{"pay": 1300, "roles":{"primary":"hero", "secondary":"sweetheart"}}');





SELECT *, JSON_EXTRACT(details, '$.pay') AS pay, JSON_EXTRACT(details, '$.roles.primary') AS role_primary,
JSON_EXTRACT(details, '$.roles.secondary') AS role_secondary
FROM movie_links;
WHERE JSON_EXTRACT(details, '$.role.primary') = 'villain';


SELECT * FROM movie;
SELECT * FROM actors;
SELECT * FROM characters;
SELECT * FROM movie_links;


-- SELECT movie.title, actors.forename, actors.surname FROM actors WHERE movie.title = actors.movie;







SELECT movie.*, actors.forename, actors.surname
FROM movie
INNER JOIN movie_links ON movie.movieID = movie_links.movieID;









