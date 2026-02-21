
--CURRENT Date functions
SELECT CURRENT_DATE;

--to get current time
SELECT CURRENT_TIME;

--to get Date & Time together
SELECT CURRENT_TIMESTAMP;

--Date Part functions
SELECT DATE_PART('Year',Timestamp '2023-04-01 12:09:00');
SELECT DATE_PART('hour',Timestamp '2023-04-01 12:09:00');
SELECT DATE_PART('day',Timestamp '2023-04-11 12:09:00');

--Trunc function
SELECT DATE_TRUNC('hour',Timestamp '2023-04-01 12:59:58');
SELECT DATE_TRUNC('Month', Timestamp'2024-11-04 11:00:00');
SELECT DATE_TRUNC('Year',Timestamp '2023-04-01 12:09:00');

--Justify function
SELECT JUSTIFY_DAYS(interval '45 days');
SELECT JUSTIFY_HOURS(interval '45 minutes');
SELECT JUSTIFY_HOURS(interval '84 minutes');





