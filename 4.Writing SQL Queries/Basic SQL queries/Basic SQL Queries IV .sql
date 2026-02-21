DROP TABLE IF EXISTS student_details6;

CREATE TABLE IF NOT EXISTS student_details6(
	srno INT PRIMARY KEY,	
	order_id VARCHAR(20),	
	student_name VARCHAR(50),	
	payment_date DATE,	
	course_name VARCHAR(30),	
	price NUMERIC,	
	payment_status	VARCHAR(15),
	payment_id VARCHAR(30),	
	email VARCHAR(50),
	state VARCHAR(20)
);

SELECT * FROM student_details6;

--/Library/PostgreSQL/18/data

--indirect method ( COPY reads data from the PostgreSQL server’s file system. Therefore, the CSV must be placed in the server’s data_directory with proper permissions.)
COPY student_details6(srno,order_id,student_name,payment_date,course_name,price,payment_status,payment_id,email,state)
FROM '/Library/PostgreSQL/18/data/Indian_Students_Data.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM student_details6;


-- use of SUM function
SELECT SUM(price) FROM student_details6;

--use of Sum with filter
SELECT SUM(price) FROM student_details6 WHERE payment_status='captured';

--use of AVG function
SELECT AVG(price) FROM student_details6;

--KEEP only 'n' number of decimals
SELECT AVG(price)::NUMERIC(10,2) FROM student_details6;

--use of AVG with filter
SELECT AVG(price) FROM student_details6 WHERE payment_status='captured';


--USE of LIKE operator
SELECT * FROM student_details6 WHERE student_name LIKE '%Kumar%'; 
                 --here use '%' because show all records that ignores prefix or postfix of 'Kumar'

--use of IN operator
SELECT * FROM student_details6 WHERE state IN ('Maharashtra', 'Bihar', 'Haryana');

--USE of OR operator
SELECT * FROM student_details WHERE state='Maharashtra' OR state='Bihar';
