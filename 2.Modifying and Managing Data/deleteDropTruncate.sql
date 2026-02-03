select * from student;

--make duplicate copy
SELECT * INTO std_duplicate from student;
select * from std_duplicate;

--delete a specific record based on certain condition
DELETE FROM std_duplicate where std_id=6;
select * from std_duplicate;

--delete all the recods from table
TRUNCATE std_duplicate;
select * from std_duplicate;

--delete all the table structure
DROP TABLE std_duplicate;
select * from std_duplicate;
