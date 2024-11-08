-- Windows Function
USE sakila;
select * from payment;
select count(amount) from payment;
select payment_id,amount,customer_id ,
(select count(amount) from payment)
from payment;

SELECT payment_id,customer_id, 
COUNT(amount) OVER() 
FROM payment;

SELECT payment_id,customer_id, 
COUNT(amount) OVER(),
MAX(amount) OVER() 
FROM payment;


SELECT payment_id,customer_id, 
COUNT(amount) OVER(),
MAX(amount) OVER(),
AVG(amount) OVER()
FROM payment;

SELECT payment_id,customer_id, 
COUNT(amount) OVER(PARTITION BY customer_id),
MAX(amount) OVER() 
FROM payment;
SELECT COUNT(*) FROM payment WHERE customer_id = 5;

SELECT payment_id,customer_id, 
COUNT(amount) OVER(PARTITION BY customer_id),
SUM(amount) OVER(PARTITION BY customer_id) 
FROM payment;
 

use sakila;
drop table employees;
create table employees(id int primary key auto_increment,
dept varchar(20), salary int);

insert into employees(dept, salary) values("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400),
("dsa",150),("dsa",120),
("dsa",40),("dsa",90),("dsa",500);
SELECT * FROM employees;

SELECT id , dept,salary,
AVG(salary) OVER(PARTITION BY dept)
FROM employees;
-- RUNNING AVG
SELECT id , dept,salary,
AVG(salary) OVER(PARTITION BY dept ORDER BY salary) AS Average_Salary
FROM employees;
-- RUNNING SUM
SELECT id , dept,salary,
SUM(salary) OVER(PARTITION BY dept ORDER BY salary) AS Average_Salary
FROM employees;

SELECT id , dept,salary,
SUM(salary) OVER(PARTITION BY dept ) AS Average_Salary
FROM employees ORDER BY salary;


SELECT id , dept,salary,
SUM(salary) OVER( ORDER BY salary) AS Average_Salary
FROM employees ORDER BY salary;

SELECT id , dept,salary,
row_number() over(partition by dept) 
from employees ;

SELECT id , dept,salary,
row_number() over(partition by dept) 
from employees order by salary;

SELECT id , dept,salary,
rank() over(partition by dept ) 
from employees;


SELECT id , dept,salary,
rank() over(partition by dept order by salary) 
from employees;

SELECT id , dept,salary,
rank() over(partition by dept order by salary desc) 
from employees;

insert into employees values(99,"dsa",120);

SELECT id , dept,salary,
rank() over(partition by dept order by salary) 
from employees;

