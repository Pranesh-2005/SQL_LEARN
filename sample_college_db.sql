CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(30),
marks INT NOT NULL,
grade CHAR(1),
city VARCHAR(15)
);

INSERT INTO
student (id, name,marks,grade,city)
VALUES 
(1,'JS',100,'O','SNKL'),
(2,'Pranesh',52,'C','PPY'),
(3,'Suresh',80,'A','PPY'),
(4,'Selva',82,'A','TUP'),
(5,'Surya',90,'A','MDU'),
(6,'HR',90,'A','THU');

SELECT * from student
WHERE city NOT IN ('PPY','SNKL') AND marks >= 80
LIMIT 3;

SELECT * from student 
WHERE marks >= 80
ORDER BY marks DESC
LIMIT 1;

SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT COUNT(id)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT city,name,COUNT(city)
FROM student
GROUP BY city, name;

SELECT city, MAX(marks)
FROM student
GROUP BY city;

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks);

SELECT grade,COUNT(id)
FROM student
GROUP BY grade
ORDER BY grade DESC;

SELECT city, COUNT(id)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city, COUNT(name)
FROM student
WHERE grade = 'A'
GROUP BY city
HAVING MAX(marks) >= 80
ORDER BY city ASC;

UPDATE student
SET grade = 'B'
WHERE marks >= 50 AND marks < 80;

SELECT * 
FROM student;

DELETE FROM student
WHERE marks = 80;

CREATE TABLE dpt(
id INT PRIMARY KEY,
name VARCHAR(30)
);

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(30),
dpt_id INT,
FOREIGN KEY(dpt_id) REFERENCES dpt(id)
);

INSERT INTO dpt
VALUES (1,'AD'),
(2,'AL'),
(3,'CSE'),
(4,'ECE')

SELECT *
FROM dpt;

DROP TABLE teacher;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(30),
dpt_id INT,
FOREIGN KEY(dpt_id) REFERENCES dpt(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher 
VALUES (1,'JS',1),
(2,'Pranesh',2),
(3,'CG',3),
(4,'Bharath',4)

SELECT * FROM teacher

UPDATE dpt
SET id = 258
WHERE id = 4;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 18;

ALTER TABLE student
ALTER COLUMN age TYPE VARCHAR(3);

ALTER TABLE student
RENAME age to stu_age;

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE student
RENAME TO students;

SELECT * 
FROM students

ALTER TABLE students
RENAME COLUMN name TO full_name;

DELETE FROM students
WHERE marks < 80;

ALTER TABLE students
DROP COLUMN grade;

SELECT *
FROM teacher t
INNER JOIN dpt d
ON t.id = d.id;

SELECT *
FROM teacher t
LEFT JOIN dpt d
ON t.id = d.id;

SELECT *
FROM teacher t
RIGHT JOIN dpt
ON t.id = dpt.id;

SELECT *
FROM teacher t
FULL JOIN dpt d
ON t.id = d.id;

SELECT *
FROM teacher t
LEFT JOIN dpt d
ON t.id = d.id
WHERE d.id IS NULL;