CREATE TABLE student_courses (studentid INTEGER,
	course VARCHAR(40),
	grade FLOAT DEFAULT NULL,
	FOREIGN KEY (studentid) REFERENCES students(id),
	FOREIGN KEY (course) REFERENCES courses(code));

INSERT INTO student_courses VALUES
  ((SELECT id FROM students WHERE firstname="Fred"), 'INFO330A', NULL),
  ((SELECT id FROM students WHERE firstname="Fred"), 'INFO448A', NULL),
  ((SELECT id FROM students WHERE firstname="Fred"), 'INFO314', NULL),
  ((SELECT id FROM students WHERE firstname="Barney"), 'INFO330A', NULL),
  ((SELECT id FROM students WHERE firstname="Barney"), 'INFO449A', NULL),
  ((SELECT id FROM students WHERE firstname="Wilma"), 'BAW0100', NULL),
  ((SELECT id FROM students WHERE firstname="Wilma"), 'BAW100A', NULL),
  ((SELECT id FROM students WHERE firstname="Betty"), 'BAW0100', NULL);
