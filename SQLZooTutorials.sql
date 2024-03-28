-- Create a table
CREATE TABLE students1 (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
);

-- Insert some data
INSERT INTO students1 (name, age) VALUES ('John', 25);
INSERT INTO students1 (name, age) VALUES ('Alice', 30);

-- Query all students
SELECT * FROM students1;

-- Query students whose name starts with 'A'
SELECT * FROM students WHERE name LIKE 'A%';



-- Create a table
CREATE TABLE countries1 (
    id SERIAL PRIMARY KEY,
    name TEXT,
    rank INTEGER
);


-- Insert some data
INSERT INTO countries1 (name, rank) VALUES ('Canada', 1);
INSERT INTO countries1 (name, rank) VALUES ('UnitedStates', 2);

-- Assuming you have a 'countries' table in your database
SELECT * FROM countries1;



CREATE TABLE nobelprize (
    id SERIAL PRIMARY KEY,
    name TEXT,
    date INTEGER
);

-- Insert some data
INSERT INTO nobelprize (name, date) VALUES ('Jon Fosse', 2023);
INSERT INTO nobelprize (name, date) VALUES ('Maria Ressa', 2022);


-- Query students with ages greater than the average age
SELECT * FROM students WHERE age > (SELECT AVG(age) FROM students);
SELECT * FROM countries1 WHERE rank > (SELECT AVG(rank) FROM countries1);
SELECT * FROM nobelprize WHERE date > (SELECT AVG(date) FROM nobelprize);

-- Calculate the total number of students and their average age
SELECT COUNT(*) AS total_students, AVG(age) AS average_age FROM students;
SELECT COUNT(*) AS total_countries1, AVG(rank) AS average_rank FROM countries1;
SELECT COUNT(*) AS total_nobelprize, AVG(date) AS average_date FROM nobelprize;


-- Assuming you have 'games' and 'goals' tables in your database
SELECT * FROM nobelprize
JOIN students1 ON nobelprize = students1.nobelprize;
