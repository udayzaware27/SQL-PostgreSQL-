CREATE TABLE student(
	"ID" INT PRIMARY KEY,
	"Name" varchar(20) NOT NULL,
	"Class" varchar(20) NOT NULL,
	"Age" INT,
	"Fee" NUMERIC
);

SELECT * FROM student;

--change column name
ALTER TABLE student RENAME COLUMN "Age" TO "Student_Age";

SELECT * FROM student;

--adding new column to table
ALTER TABLE student ADD COLUMN "Address" varchar(50);

SELECT * FROM student;

--delete column from table
ALTER TABLE student DROP COLUMN "Student_Age";

SELECT * FROM student;

--change column data type 
ALTER TABLE student ALTER COLUMN "Fee" TYPE INT;

SELECT * FROM student;

--change table name 
ALTER TABLE student RENAME TO students;

SELECT * FROM students;

--delete table from database
DROP TABLE students;