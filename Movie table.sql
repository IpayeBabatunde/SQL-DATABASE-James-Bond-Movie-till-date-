CREATE TABLE bond(
    id INT,
    title VARCHAR (50),
    released INT,
    actor VARCHAR (30),
    director VARCHAR (30),
    box_office DECIMAL (5,1)
);
 DROP TABLE bond;

CREATE TABLE bond(
    id INT PRIMARY KEY ,
    title VARCHAR (50) UNIQUE,
    released INT NOT NULL,
    actor VARCHAR (30),
    director VARCHAR (30),
    box_office DECIMAL (5,1) DEFAULT '0.0'
);

INSERT INTO bond VALUES
(1, 'DR.NO', 1962, 'SEAN CONNERY', 'Terence Young', 59.5);

SELECT *  FROM bond;

INSERT INTO bond VALUES (2, 'FROM RUSSIA WITH LOVE', 1963, 'SEAN CONNERY', 'Terence Young', 78.9);
INSERT INTO bond VALUES (3, 'GOLD FINGER', 1964, 'SEAN CONNERY', 'Guy Hamilton', 124.9);
INSERT INTO bond VALUES (4, 'THUNDER BALL', 1965, 'SEAN CONNERY', 'Terence Young', 141.2);
INSERT INTO bond VALUES (5, 'YOU ONLY LIVE TWICE', 1967, 'SEAN CONNERY', 'Lewis Gilbert', 111.6);
INSERT INTO bond VALUES (6, 'ON HER MAJESTY SERVICE',1967, 'GEORGE LAZENBY', 'Peter R.hunt', 64.6);
INSERT INTO bond VALUES (7, 'DIAMONDS ARE FOREVER', 1971, 'SEAN CONNERY', 'Guy Hamilton', 116.0);
INSERT INTO bond VALUES (8, 'LIVE AND LET DIE', 1973, 'ROGER MOORE', 'Guy Hamilton', 126.4);
INSERT INTO bond VALUES (9, 'THE MAN WITH THE GOLDEN GUN', 1974, 'ROGER MOORE', 'Guy Hamilton', 97.6);
INSERT INTO bond VALUES (10, 'THE SPAY WHO LOVED ME', 1977, 'ROGER MOORE', 'Lewis Gilbert', 185.4);

ALTER TABLE bond ADD COLUMN copies_sold INT;
ALTER TABLE bond DROP COLUMN copies_sold;
ALTER TABLE bond ADD COLUMN copies_sold INT DEFAULT '0.0';

UPDATE bond SET copies_sold = 100000
WHERE id = 2;

ALTER TABLE bond DROP COLUMN copies_sold;
ALTER TABLE bond ADD COLUMN copies_sold VARCHAR (30);

UPDATE bond SET copies_sold = '$59.5 Million'
WHERE id = 1;

INSERT INTO bond VALUES (11, 'MOONRAKER', 1979, 'ROGER MOORE', 'Lewis Gilbert', 210.3, '$210 Million');
INSERT INTO bond VALUES (12, 'FOR YOUR EYES ONLY', 1981, 'ROGER MOORE', 'John Glen', 194.9, '$195 Million');
INSERT INTO bond VALUES (13, 'OCTOPUSSY', 1983, 'ROGER MOORE', 'John Glen', 183.7, '$184 Million');
INSERT INTO bond VALUES (14, 'NEVER SAY NEVER AGAIN', 1983, 'SEAN CONNERY', 'Irvin Kershner', 160.0, '$160 Million');
INSERT INTO bond VALUES (15, 'A VIEW TO KILL', 1985, 'ROGER MOORE', 'John Glen', 78.9, '$79 Million');
INSERT INTO bond VALUES (16, 'THE LIVING LIGHT DAYS', 1987, 'TIMOTHY DALTON', 'John Glen', 156.2, '$156 Million');
INSERT INTO bond VALUES (17, 'LICENSE TO KILL', 1989, 'TIMOTHY DALTON', 'John Glen', 191.2, '$191 Million');
INSERT INTO bond VALUES (18, 'GOLDENEYE', 1995, 'PIERCE BROSNAN', 'Martin Campbell', 352, '$352 Million');
INSERT INTO bond VALUES (19, 'TOMORROW NEVER DIES', 1997, 'PIERCE BROSNAN', 'Roger Spottiswoode', 333.0, '$333 Million');
INSERT INTO bond VALUES (20, 'THE WORLD IS NOT ENOUGH', 1999, 'PIERCE BROSNAN', 'Michael Apted', 361.8, '$361.8 Million');
INSERT INTO bond VALUES (21, 'DIE ANOTHER DAY', 2002, 'PIERCE BROSNAN', 'Lee Tamahon', 432.0, '$432 Million');
INSERT INTO bond VALUES (22, 'CASINO ROYALE', 2006, 'DANIEL CRAIG', 'Martin Campbell', 594.2, '$594 Million');
INSERT INTO bond VALUES (23, 'QUANTUM OF SOLACE', 2008, 'DANIEL CRAIG', 'Marc Forster', 586.1, '$586 Million');
INSERT INTO bond VALUES (24, 'SKYFALL', 2012, 'DANIEL CRAIG', 'Marc Forster', 1108.6, '$1.1 Billion');
INSERT INTO bond VALUES (25, 'SPECTRE', 2015, 'DANIEL CRAIG', 'Sam Mendes', 880.7, '880.7 Million');
INSERT INTO bond VALUES (26, 'NO TIME TO DIE', 2021, 'DANIEL CRAIG', 'Cary Joji Fukunaga', NULL , 'Not available');


UPDATE bond SET director = 'Sam Mendes'
WHERE id = 24;

UPDATE bond SET box_office = 152.4, copies_sold = '$152 Million'
WHERE id = 15;

SELECT * FROM bond;

UPDATE bond SET copies_sold = '$79 Million'
WHERE id = 2;

UPDATE bond SET copies_sold = '$125 Million'
WHERE id = 3;

UPDATE bond SET copies_sold = '$141 Million'
WHERE id = 4;

UPDATE bond SET copies_sold = '$112 Million'
WHERE id = 5;

UPDATE bond SET copies_sold = '$65 Million'
WHERE id = 6;

UPDATE bond SET copies_sold = '$116 Million'
WHERE id = 7;

UPDATE bond SET copies_sold = '$126 Million'
WHERE id = 8;

UPDATE bond SET copies_sold = '$98 Million'
WHERE id = 9;

UPDATE bond SET copies_sold = '$185 Million'
WHERE id = 10;

SELECT * FROM bond;