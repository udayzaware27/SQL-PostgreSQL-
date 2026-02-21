DROP TABLE IF EXISTS SALES_DATA;

CREATE TABLE IF NOT EXISTS SALES_DATA
(
order_id		varchar(20) PRIMARY KEY,
order_date		date,
ship_date		date,
ship_mode		varchar(20),
customer_id		varchar(20),
customer_name	varchar(50),
segment			varchar(20),
country			varchar(20),
city			varchar(40),
state			varchar(40),
postal_code		int,
region			varchar(10),
product_id		varchar(20),
category		varchar(20),
sub_category	varchar(20),
product_name	varchar(200),
sales_$			money,
quantity		int,
profit_$		money

);

SELECT * FROM SALES_DATA;

--data is directly imported using IMPORT/EXPORT option
SELECT * FROM SALES_DATA;

--Extract month/day number from date
SELECT EXTRACT(Month FROM ORDER_DATE) FROM SALES_DATA;
SELECT EXTRACT(Day FROM ORDER_DATE) FROM SALES_DATA;

--extract Month/Day name from date
SELECT TO_CHAR(order_date, 'Month') FROM SALES_DATA;
SELECT TO_CHAR(order_date, 'Day') FROM SALES_DATA;

--get total sales Month wise
SELECT TO_CHAR(ORDER_DATE, 'Month'), SUM(SALES_$)
	FROM SALES_DATA 
		GROUP BY TO_CHAR(ORDER_DATE, 'Month');


--get total orders day wise
SELECT TO_CHAR(ORDER_DATE, 'Day'), COUNT(ORDER_ID)
	FROM SALES_DATA 
		GROUP BY TO_CHAR(ORDER_DATE, 'Day');

--to get difference between two dates;
SELECT AGE(CURRENT_DATE, ORDER_DATE) FROM SALES_DATA;

--To find age 
SELECT AGE(CURRENT_DATE, '2005-09-27');








