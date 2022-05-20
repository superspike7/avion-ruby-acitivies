CREATE TABLE notes(
	id integer PRIMARY KEY,
	body varchar NOT NULL,
	student_id integer references students(id)
)

DROP TABLE notes

INSERT INTO notes (id, body, student_id) VALUES
	(1, 'first note', 1),
	(2, 'second note', 1),
	(3, 'third note', 2),
	(4, 'fourth note', 3),
	(5, 'fifth note', 3),
	(6, 'sixth note', 4),
	(7, 'seventh note', 5),
	(8, 'eighth note', 5),
	(9, 'secret note one', NULL),
	(10, 'secret note two', NULL)


SELECT * 
FROM students
INNER JOIN notes
ON students.id = notes.student_id;

SELECT * 
FROM students
LEFT JOIN notes
ON students.id = notes.student_id;

SELECT * 
FROM students
RIGHT JOIN notes
ON students.id = notes.student_id;

SELECT * 
FROM students
FULL JOIN notes
ON students.id = notes.student_id;
