USE sakila;
CREATE TABLE test1(id INT , name varchar(15),email VARCHAR(20));
SELECT * FROM test1;
CREATE USER abhinav IDENTIFIED BY "abhinav7";
SELECT current_user();
SELECT * FROM MYSQL.USER;
GRANT SELECT(id,name,email) ON sakila.test1 TO abhinav;

GRANT INSERT(name) ON sakila.test1 TO abhinav;

GRANT UPDATE(email) ON sakila.test1 TO abhinav;