DROP TABLE IF EXISTS student_details;

CREATE TABLE IF NOT EXISTS student_details(
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

SELECT * FROM student_details;