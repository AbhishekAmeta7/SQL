USE college;
SHOW TABLES;
 -- CREATE VIEW
 CREATE VIEW View1 AS 
 SELECT rollno , name , marks
 FROM Student1;
 SELECT * FROM View1;
 
 SELECT * FROM View1 
 WHERE marks > 90;
 
 -- DROP VIEW
 DROP VIEW View1;
 
 -- Create Table salseman
 USE company;
 CREATE TABLE salseman(s_id INT PRIMARY KEY , name VARCHAR(50),city VARCHAR(30), commision FLOAT);
 -- INSERT INTO TABLE
 INSERT INTO salseman(s_id , name ,city , commision )
 VALUES(5001,"James Hoog","New York",0.15),(5002,"Nail Knite","Paris",0.13),
		(5005,"Pit Alex","London",0.11),(5006,"Mc Lyon","Paris",0.14),
		(5007,"Paul Adam","Rom",0.13),(5003,"Lauson Hen","San Jose",0.12);
 SELECT * FROM salseman;
 
 -- 1) Create a View for those salsepeople who belong to city New York
 
 CREATE VIEW salsepeople AS
 SELECT * FROM salseman
 WHERE city = "New York";
 
 -- RETRIEVE View
 SELECT * FROM salsepeople;
 
 -- 2) create a view for all salespersons. Return salesperson ID, name, and city
 CREATE VIEW salsepeoples AS
 SELECT s_id , name , city 
 FROM salseman;
 SELECT * FROM salsepeoples;

-- 3) create a view to locate the salespeople in the city 'New York'
CREATE VIEW salseperson AS
SELECT name FROM salseman
WHERE city = "New York";
SELECT * FROM salseperson;


-- CREATE TABLE customers
CREATE TABLE customers(customer_id INT PRIMARY KEY, cust_name VARCHAR(50),  city VARCHAR(50), grade INT, salesman_id INT);
INSERT INTO customers(customer_id, cust_name, city, grade, salesman_id )
VALUES(3002, "Nick Rimando", "New York", 100, 5001),(3007, "Brad Davis", "New York", 200, 5001),
	  (3005, "Graham Zusi", "California", 200, 5002),(3008, "Julian Green", "London", 300, 5002),
	  (3004, "Fabian Johnson", "Paris", 300, 5006),(3009, "Geoff Cameron", "Berlin", 100, 5003),
	  (3003, "Jozy Altidor", "Moscow", 200, 5007),(3001, "Brad Guzan", "London", NULL, 5005);
      
      SELECT * FROM customers;
      
-- 4) create a view that counts the number of customers in each grade
    CREATE VIEW gradecount (grade, number) AS
    SELECT grade , COUNT(*) FROM customers
    GROUP BY grade;
    
    SELECT * FROM gradecount;