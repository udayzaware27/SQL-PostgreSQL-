CREATE TABLE student(
	Std_ID INT PRIMARY KEY,
	Std_Name varchar(20) NOT NULL,
	Age INT NOT NULL,
	Gender varchar(20),
	Course varchar(20),
	Fees numeric
);

SELECT * FROM student;

--insert data into table

INSERT INTO student (Std_ID, Std_Name, Age, Gender, Course, Fees)
	VALUES (1, 'Uday Zaware', 20, 'Male', 'Data Analysis', 9500);
	
SELECT * FROM student;


INSERT INTO student VALUES (2, 'Ananya Deshpande', 20, 'Female', 'MBBS', 15000),
							(3, 'Vinit Patil', 21, 'Male', 'Data Science', 10000),
							(4, 'Krushna Bhutare', 19, 'Male', 'Data Science', 15000),
							(5, 'Samruddhi Choudhary', 22, 'Female', 'Web Development', 5000);

SELECT * FROM student;