use sakila;
select * from actor;
show tables;
select actor_id,first_name from actor;
select actor_id * 100 ,first_name from actor;
select actor_id>3;
select * from actor where actor_id > 3;
select first_name from actor where first_name = 'NICK';
select * from actor where first_name = 'NICK';
select * from actor where actor_id != 3;

select * from actor where actor_id between 3 and 6; 
select * from actor where actor_id in(3,6); 
select * from actor where actor_id not in(3,6);
select * from actor where actor_id not in(1,3,6);
select first_name,last_name from actor where actor_id in(1,3,6);
select first_name,last_name,actor_id from actor where actor_id in(10,12,14);
select * from actor where actor_id not between 3 and 6; 
-- comment like operator
select first_name from actor where first_name  like 'N%';
select * from actor where first_name  like 'S%';
select * from actor where first_name  like '%S';
select * from actor where first_name  like 'J%S';
select first_name from actor where first_name  like 'N%K';
select * from actor where first_name  like '%S%';
SELECT * FROM actor
WHERE first_name LIKE 'S%' OR first_name LIKE 'A%';
select * from actor where first_name  like '%S%I';
select * from actor where first_name  like '%S%I%';
 
select * from actor where first_name  like 'E%';
select * from actor where first_name  like '%or%';
-- comment single character
select * from actor where first_name  like 'E_';
-- comment double character
select * from actor where first_name  like '___';
select * from actor where first_name  like '_E_';
select * from actor where first_name  like '_E%';
select * from actor where first_name  like '_EN';
-- comment minimus should be three charccter character 
select * from actor where first_name  like 'E___%';
-- comment conditional

select * from actor where actor_id = 3 or actor_id=5;
select first_name
 from actor where actor_id = 3 and actor_id=5;
show databases;
use sakila;
SELECT first_name FROM actor
  WHERE first_name LIKE '%a%a%a%';
  SELECT first_name,last_name FROM actor WHERE first_name LIKE '____';
SELECT first_name FROM actor WHERE first_name = last_name;
show tables;




