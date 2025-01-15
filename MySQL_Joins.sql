create database college;
USE college;
create table student(sID INT PRIMARY KEY , name VARCHAR(50));
INSERT INTO student(sID , name)
VALUES(101,"Adam"),(102,"Bob"),(103,"Casey");
SELECT * FROM student;

CREATE TABLE course(sID INT , course VARCHAR(30));
-- INSERT DATA
INSERT INTO course(sID,course)
VALUES(102,"English"),(105,"Maths"),
       (103,"Science"),(107,"Computer Science");
       
 -- Retrieve Data Of course table
 SELECT * FROM course;
 
 -- Natural Join
 SELECT * FROM 
 student S INNER JOIN course C
 ON S.sID = C.sID;
 
 -- LEFT JOIN
 SELECT * FROM 
 student S LEFT JOIN course C 
 ON S.sID = C.sID;
 
 -- RIGHT JOIN
 SELECT * FROM 
 student S RIGHT JOIN course C
 ON S.sID = C.sID;
 
 -- FULL JOIN (using UNION)
 SELECT * FROM 
 student S LEFT JOIN course C 
 ON S.sID = C.sID
 UNION
 SELECT * FROM 
 student S RIGHT JOIN course C 
 ON S.sID = C.sID;
 
 -- LEFT EXCLUSIVE JOIN
 SELECT * FROM 
 student S LEFT JOIN course C
 ON S.sID = C.sID
 WHERE C.sID IS NULL;
 
 -- RIGHT EXCLUSIVE JOIN
 SELECT * FROM 
 student S RIGHT JOIN course C
 ON S.sID = C.sID
 WHERE S.sID IS NULL;
 
 -- FULL EXCLUSIVE JOIN
 SELECT * FROM 
 student S LEFT JOIN course C 
 ON S.sID = C.sID
 WHERE C.sID IS NULL 
 UNION
 SELECT * FROM 
 student S RIGHT JOIN course C 
 ON S.sID = C.sID
 WHERE S.sID IS NULL ;
 
 -- SELF JOIN
 
 CREATE TABLE Employee(id INT PRIMARY KEY,name VARCHAR(50),manager_id INT);
 INSERT INTO Employee(id,name,manager_id)
 VALUES(101,"Adam",103),(102,"Bob",104),
       (103,"Casey",NULL),(104,"Donald",103);
 SELECT * FROM Employee;
 
 SELECT E1.name AS Manager_Name , E2.name AS Employee_Name  FROM
 Employee E1 JOIN Employee E2
 ON E1.id = E2.manager_id;