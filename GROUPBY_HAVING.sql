show databases;
USE company;
SHOW TABLES;

-- CREATE TABLE payment
CREATE TABLE payment(customer_id INT PRIMARY KEY, customer VARCHAR(50), mode VARCHAR(50), city VARCHAR(50));
SELECT * FROM payment;
-- INSERT  DATA

INSERT INTO payment(customer_id,customer,mode,city)
VALUES (101,"Olivia Barrett","Netbanking","Portland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Harnandez","Credit Card","Settle"),
(104,"Liam Donovan","Netbanking","Denver"),
(105,"Sophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucas Carter","Netbanking","Boston"),
(109,"Isabella Martinez","Netbanking","Nashville"),
(110,"Jackson Brooks","Credit Card","Boston");

-- RETRIVE DATA
SELECT * FROM payment;

-- Find The total payment according to each payment mode

SELECT mode , COUNT(customer)
FROM payment
GROUP BY mode;
DROP TABLE student;
CREATE TABLE student(rollno INT PRIMARY KEY,name VARCHAR(50), marks INT, grade VARCHAR(5), city VARCHAR(20));
 
INSERT INTO student(rollno,name,marks,grade,city)
VALUES(101,"Anil",78,"C","Pune"),
(102,"Bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"B","Mumbai"),
(104,"Dhruv",96,"A","Delhi"),
(105,"Emanuel",12,"F","Delhi"),
(106,"Farah",82,"B","Delhi");

SELECT * FROM student;
-- GROUP BY CLAUSE
SELECT grade , COUNT(name)
FROM student 
GROUP BY grade
ORDER BY grade;

-- HAVING Clause

-- COUNT no of student  in each city where max marks cross 90

SELECT * FROM student;

SELECT city , COUNT(name) 
FROM student 
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks)>=93
ORDER BY city ;

