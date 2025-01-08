use company;
show tables;
CREATE TABLE dept(id INT PRIMARY KEY,name VARCHAR(50));
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
); 

SELECT * FROM dept;
SELECT * FROM teacher;
INSERT INTO dept(id,name)
VALUES(101,"Science"),
      (102,"English"),
      (103,"Hindi");
      
      INSERT INTO teacher(id,name,dept_id)
      VALUES(101,"Adam",101),
			(102,"Eve",102);
            
	 UPDATE dept
     SET id = 111
     WHERE id = 103;
     INSERT INTO teacher(id,name,dept_id)
      VALUES(104,"Alish",111);
      
      -- ALTER Command
      -- ADD Column
      ALTER TABLE student
      ADD COLUMN Age INT NOT NULL DEFAULT 21;
       
      SELECT * FROM student;
      
      -- DROP column
      ALTER TABLE student
      DROP COLUMN Age;
      
      -- RENAME Table
      ALTER TABLE students
      RENAME TO student;
      
      SELECT * FROM student;
      
      -- CHANGE Column
      ALTER TABLE students 
      CHANGE COLUMN marks mark INT;
      
      -- MODIFY Column
      ALTER TABLE student
      MODIFY city CHAR(20);
      ALTER TABLE students
      MODIFY city VARCHAR(20);
      
      -- DELETE DATA
      DELETE FROM student
      WHERE mark < 85;
      
      