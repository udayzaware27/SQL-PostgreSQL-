SELECT * FROM student;

insert into student values(6, 'Ajit More', 10, 'female','AI',250);

SELECT * FROM student;

--update data into table
UPDATE student SET age=25, gender='Male', fees=2500 WHERE std_id=6;

SELECT * FROM student;