DROP TABLE IF EXISTS student_details2;

CREATE TABLE IF NOT EXISTS student_details2(
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

SELECT * FROM student_details2;

--/Library/PostgreSQL/18/data

--indirect method ( COPY reads data from the PostgreSQL server’s file system. Therefore, the CSV must be placed in the server’s data_directory with proper permissions.)
COPY student_details2(srno,order_id,student_name,payment_date,course_name,price,payment_status,payment_id,email,state)
FROM '/Library/PostgreSQL/18/data/Indian_Students_Data.csv'
DELIMITER ','
CSV HEADER;