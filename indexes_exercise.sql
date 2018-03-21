USE employees;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

USE codeup_test_db;

DESCRIBE albums;

SELECT * FROM albums;

ALTER TABLE albums ADD UNIQUE (name, artist );

INSERT INTO albums (name, artist, release_date, sales, genre) VALUES ('Nevermind', 'Nirvana', 1991, 167, 'Grunge');
