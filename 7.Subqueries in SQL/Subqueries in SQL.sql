-- CREATING EMP TABLE
DROP TABLE IF EXISTS emp;

CREATE TABLE IF NOT EXISTS emp
(
	emp_id	VARCHAR(10) PRIMARY KEY, 
	salesman_name VARCHAR(50),
	city VARCHAR(20),
	age INT
);

SELECT * FROM emp;

insert into emp (emp_id, salesman_name, city, age)
 		values  ('S001', 'Sachin Jadhav', 'Mumbai', 35),
				('S002', 'Adika Singh', 'Pune',  30),
 				('S003', 'Vijay More', 'Delhi', 29),
 				('S004', 'Vinod Zine', 'Mumbai', 31),
				('S005', 'Hari Umap', 'Mumbai', 26),
				('S006', 'Raj Mehta', 'Mumbai', 36);


--Find the average age of all salesman
SELECT AVG(AGE)::NUMERIC(10,2) FROM EMP;

--Show the salesman whose age is less than the average age
SELECT * FROM EMP
WHERE AGE < (SELECT AVG(AGE)::NUMERIC(10,2) FROM EMP);



--Sub query with IN Operator


-- CREATING SALARY TABLE
DROP TABLE IF EXISTS salary;

CREATE TABLE IF NOT EXISTS salary
(
	emp_id	VARCHAR(10) PRIMARY KEY, 
	salesman_name VARCHAR(50),
	salary INT
);

SELECT * FROM salary;

insert into salary (emp_id, salesman_name, salary)
 		values  ('S001', 'Sachin Jadhav',25000),
				('S002', 'Adika Singh',30000),
 				('S003', 'Vijay More',50000),
 				('S006', 'Raj Mehta',23000);

-- DISPLAY ALL EMPLOYEE ID
SELECT EMP_ID FROM SALARY;

--SHOW ALL INFORMATION ABOUT EMPLOYEE WHO ARE AVAILABELE IN SALARY TABLE
SELECT * FROM EMP
WHERE EMP_ID IN (SELECT EMP_ID FROM SALARY);


---*** ASSIGNMENT ***


--Get emp_id whose salary in more than 25000 from salary table

SELECT EMP_ID FROM SALARY WHERE SALARY > 25000;


--Show emp_id, salesman_name and age from emp table whose salary is more than 25000

SELECT EMP_ID, SALESMAN_NAME, AGE FROM EMP
WHERE EMP_ID IN (SELECT EMP_ID FROM SALARY WHERE SALARY > 25000);
				
			