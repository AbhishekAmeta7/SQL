use sakila;
show databases;
select * from emp;
UPDATE emp set ename = "Sanjay" WHERE eid = 101;
use regex1;
CREATE TABLE actor_copy as
SELECT actor_id,first_name,last_name FROM sakila.actor
WHERE actor_id BETWEEN 2 AND 5;
SELECT * FROM actor_copy;
DELETE FROM actor_copy WHERE actor_id=2;
UPDATE actor_copy SET first_name = "XYZ";
SELECT * FROM sakila.actor;

UPDATE actor_copy SET first_name = 
   (SELECT sa.first_name FROM
      sakila.actor
        WHERE sa.actor_id = actor_copy.actor_id AND
          actor_copy.actor_id = 4) ;
   
   
UPDATE actor_copy AS ac INNER JOIN sakila.actor AS sa
   ON ac.actor_id = sa.actor_id
   SET ac.first_name = sa.first_name;
   SELECT * FROM sakila.actor;
   SELECT * FROM actor_copy;
   
   CREATE TABLE companies(id INT);
   INSERT INTO companies(id)VALUES(10);
   SELECT * FROM companies;
   ALTER TABLE companies ADD COLUMN phone VARCHAR(15);
   DESC companies;
   SELECT * FROM companies;
   ALTER TABLE companies ADD COLUMN employee_count3 INT NOT NULL ;
   ALTER TABLE companies DROP COLUMN employee_count3;
   ALTER TABLE companies 
   RENAME COLUMN phone TO company_data;
   ALTER TABLE companies ADD PRIMARY KEY (id);
   DESC companies;
   
   -- DROP Primary Key
   ALTER TABLE companies 
   ADD CONSTRAINT company_uk UNIQUE (id);
   SELECT * FROM companies;
   ALTER TABLE companies ;
   USE regex1;
   SELECT * FROM companies;
   ALTER TABLE companies
   ADD constraint regex_company_uk UNIQUE (company_data);
   DESC companies;
    SELECT * FROM companies;
    
    -- DROP CONSTRAINTS
    ALTER TABLE companies
   DROP constraint regex_company_uk;
    DESC companies;
    
    -- DROP PRIMARY KEY
    ALTER TABLE companies
   DROP PRIMARY KEY;
    DESC companies;
    SELECT * FROM companies;
    
    UPDATE companies SET company_data = 0;
    ALTER TABLE companies MODIFY company_data INT;
    DESC companies;
    -- CHANGE DATATYPE AND COLUMN NAME THEN  USE CHANGE
    ALTER TABLE companies 
    CHANGE company_data company_pin VARCHAR(15);
    DESC companies;
    
    