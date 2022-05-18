CREATE TABLE students (
	id integer PRIMARY KEY,
	first_name character varying(255) NOT NULL,
	middle_name character varying(255) ,
	last_name character varying(255)  NOT NULL,
	age NUMERIC  NOT NULL,
	location character varying(255)  NOT NULL,
	created_at TIMESTAMP WITHOUT time zone NOT NULL,
	updated_at TIMESTAMP WITHOUT time zone NOT NULL
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location, created_at, updated_at) VALUES
    (1, 'Juan', 'Blank', 'Cruz', 18, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 'Anne', 'Blank', 'Wall', 20, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 'Theresa', 'Blank', 'Joseph', 21, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (4, 'Isaac', 'Blank', 'Gray', 19, 'Laguna', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (5, 'Zack', 'Blank', 'Matthews', 22, 'Marikina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 'Finn', 'Blank', 'Lam', 25, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)

UPDATE students SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan' WHERE id = 1;

DELETE FROM students WHERE id = 6;
