CREATE TABLE timeslots (id INTEGER PRIMARY KEY,
	start_time DATETIME NOT NULL,
	end_time DATETIME NOT NULL);

DROP TABLE IF EXISTS rooms;

CREATE TABLE rooms (id INTEGER PRIMARY KEY AUTOINCREMENT,
	number INTEGER,
	buildingid INTEGER,
	seating INTEGER,
	UNIQUE (number, buildingid));

CREATE TABLE schedule (coursecode VARCHAR(40) REFERENCES courses(code),
    roomid INTEGER REFERENCES rooms(id),
    timeslotid INTEGER REFERENCES timeslots(id),
    PRIMARY KEY (coursecode, timeslotid),
    UNIQUE (roomid, timeslotid));

	--some examples:
INSERT INTO timeslots (start_time, end_time) VALUES 
('2023-04-10 11:00:00', '2023-04-10 12:30:00'),
('2023-04-11 15:00:00', '2023-04-11 17:00:00');

INSERT INTO rooms (number, buildingid, seating) VALUES 
(400, (SELECT id FROM buildings WHERE name="Mary Gates Hall"), 40),
(120, (SELECT id FROM buildings WHERE name="Kane Hall"), 19);

INSERT INTO schedule (coursecode, roomid, timeslotid) VALUES 
('INFO330A', 1, 1),
('INFO314', 2, 2);









