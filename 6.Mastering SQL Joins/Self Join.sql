-- SELFT JOIN

-- Creating Table 3 -- Salesman

DROP TABLE IF EXISTS Salesman;
CREATE TABLE IF NOT EXISTS Salesman
(

	emp_id	VARCHAR(10) PRIMARY KEY, 
	salesman_name VARCHAR(50),
	city VARCHAR(20),
	supervisor_id VARCHAR(10)

);

SELECT * FROM Salesman;

insert into Salesman (emp_id, salesman_name, city, supervisor_id)
 		values  ('S001', 'Sachin Jadhav', 'Mumbai', 'S002'),
				('S002', 'Adika Singh', 'Pune',  'S004'),
 				('S003', 'Vijay More', 'Delhi', 'S002'),
 				('S004', 'Atul Kale', 'Mumbai', 'S004');
				

--SELF JOIN
SELECT T1.SALESMAN_NAME AS SALESMAN, T2.SALESMAN_NAME AS SUPERVISOR
FROM SALESMAN AS T1
JOIN SALESMAN AS T2
ON T2.EMP_ID = T1.SUPERVISOR_ID;

