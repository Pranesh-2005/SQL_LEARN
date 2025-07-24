CREATE TABLE employee_info(
id INT PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL,
salary INT
)

INSERT INTO employee_info(id,name,salary) VALUES(1,'adam',25000),(2,'bob',30000),(3,'casey',40000);

SELECT * FROM employee_info;