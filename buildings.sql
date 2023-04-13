CREATE TABLE buildings (name VARCHAR(80) NOT NULL,
	shortname VARCHAR(10) UNIQUE,
	id INTEGER PRIMARY KEY AUTOINCREMENT);

CREATE TABLE rooms (number INTEGER,
	buildingid INTEGER,
	seating INTEGER,
	PRIMARY KEY (number, buildingid),
	FOREIGN KEY (buildingid) REFERENCES buildings(id));

	INSERT INTO buildings (name, shortname) VALUES
	('Mary Gates Hall', 'MGH'),
	('Kane Hall', 'KNE');

	INSERT INTO rooms (number, buildingid, seating) VALUES 
	(400, (SELECT id FROM buildings WHERE name="Mary Gates Hall"), 40),
	(120, (SELECT id FROM buildings WHERE name="Kane Hall"), 19);

