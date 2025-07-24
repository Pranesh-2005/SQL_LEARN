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

SELECT name from student WHERE city='SNKL';