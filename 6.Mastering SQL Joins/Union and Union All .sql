--UNION AND UNION ALL

--CREATE TABLE1
DROP TABLE IF EXISTS Salesman1;

CREATE TABLE IF NOT EXISTS Salesman1
(
	emp_id	VARCHAR(10) PRIMARY KEY, 
	salesman_name VARCHAR(50),
	city VARCHAR(20)
);

SELECT * FROM Salesman1;

insert into Salesman1 (emp_id, salesman_name, city)
 		values  ('S001', 'Sachin Jadhav', 'Mumbai'),
				('S002', 'Adika Singh', 'Pune'),
 				('S003', 'Vijay More', 'Delhi' ),
 				('S004', 'Atul Kale', 'Mumbai' );
				

--CREATE TABLE2
DROP TABLE IF EXISTS Salesman2;

CREATE TABLE IF NOT EXISTS Salesman2
(
	emp_id	VARCHAR(10) PRIMARY KEY, 
	salesman_name VARCHAR(50),
	city VARCHAR(20)
);

SELECT * FROM Salesman2;

insert into Salesman2 (emp_id, salesman_name, city)
 		values  ('S004', 'Atul Kale', 'Mumbai'),
				('S005', 'Vinod Mehra', 'Nagpur'),
 				('S006', 'Ajay Shetty', 'Surat' ),
 				('S007', 'Abdul Shaikh', 'Mumbai' );


-- UNION CLAUSE
SELECT * FROM SALESMAN1
UNION
SELECT * FROM SALESMAN2;


--UNION ALL
SELECT * FROM SALESMAN1
UNION ALL
SELECT * FROM SALESMAN2;
