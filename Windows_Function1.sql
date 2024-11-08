use sakila;
SELECT id , dept,salary,
RANK() OVER(PARTITION BY DEPT ORDER BY salary DESC)AS "RANK",
DENSE_RANK() OVER(PARTITION BY DEPT ORDER BY salary DESC)AS "DENSE_RANK"
FROM employees;

SELECT id , dept,salary,
FIRST_VALUE(id) OVER(ORDER BY salary DESC) 
FROM employees;
SELECT id , dept,salary,
FIRST_VALUE(id) OVER(ORDER BY salary) 
FROM employees;

SELECT id , dept,salary,
FIRST_VALUE(id) OVER(PARTITION BY DEPT) 
FROM employees;

SELECT id , dept,salary,
FIRST_VALUE(id) OVER(PARTITION BY DEPT ORDER BY salary) AS "FIRST_VALUE"
FROM employees;

SELECT id , dept,salary,
LEAD(id) OVER() AS "LEAD"
FROM employees;

SELECT id , dept,salary,
LEAD(salary) OVER(PARTITION BY dept) AS "LEAD"
FROM employees;

SELECT id , dept,salary,
LAG(salary,1) OVER(PARTITION BY dept) AS "LEAD"
FROM employees;

SELECT id , dept,salary,
LAG(salary,1) OVER(PARTITION BY dept) AS "LEAD"
FROM employees;

SELECT DATEDIFF(d, (NOW() , 2), NOW()) FROM dual;
SELECT  * FROM payment;
SELECT customer_id ,staff_id , SUM(amount)
FROM payment GROUP BY customer_id, staff_id;

SELECT id,dept,salary,
LAG(salary,1) OVER(PARTITION BY dept,salary) AS PREVIOUS
FROM employees;



