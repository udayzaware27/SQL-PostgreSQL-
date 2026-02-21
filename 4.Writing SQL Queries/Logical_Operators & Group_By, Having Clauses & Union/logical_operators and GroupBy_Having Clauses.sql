DROP TABLE IF EXISTS movie_ratings;

CREATE TABLE IF NOT EXISTS movie_ratings(
	Poster_Link	varchar(300),
	Series_Title varchar(100),
	Released_Year varchar(10),
	Certificate varchar(10),
	Runtime varchar(10),
	Genre varchar(50),
	IMDB_Rating decimal,
	Overview varchar(500),
	Meta_score int,
	Director varchar(100),
	Star1 varchar(100),
	Star2 varchar(100),
	Star3 varchar(100),
	Star4 varchar(100),
	No_of_Votes int,
	Gross money
);

SELECT * FROM movie_ratings;


SHOW data_directory;
--/Library/PostgreSQL/18/data

--import data from CSV to PostgreSQL
COPY movie_ratings
FROM '/Library/PostgreSQL/18/imports/Top_1000_IMDB.csv'
DELIMITER ','
CSV HEADER;

---fetch all data
SELECT * FROM movie_ratings;


--fetch only Series_Title, release year & director of all movies
SELECT series_title, released_year, director FROM movie_ratings;

--Fetch the name, release year and imdb rating of movies which are UA certified.
SELECT series_title, released_year, imdb_rating FROM movie_ratings WHERE certificate='UA';

--Fetch the name and genre of movies which are UA certified and have a Imdb rating of over 8.
SELECT series_title, genre FROM movie_ratings WHERE certificate='UA' AND imdb_rating>8;

--Find out how many movies are of Drama genre.
SELECT COUNT(*) FROM movie_ratings WHERE LOWER(genre) LIKE '%drama%';

--How many movies are directed by :	'Quentin Tarantino', 'Steven Spielberg', 'Christopher Nolan',  'Rajkumar Hirani'
SELECT COUNT(*) FROM movie_ratings WHERE director IN ('Quentin Tarantino', 'Steven Spielberg', 'Christopher Nolan',  'Rajkumar Hirani');

--Find out all the movies staring by Aamir Khan
SELECT * FROM movie_ratings WHERE star1='Aamir Khan' OR star2='Aamir Khan' OR star3='Aamir Khan' OR star4='Aamir Khan';

--Find out the movies staring by Aamir Khan and imdb raing more than 8.3
SELECT * FROM movie_ratings WHERE (star1='Aamir Khan' OR star2='Aamir Khan' OR star3='Aamir Khan' OR star4='Aamir Khan') AND imdb_rating>8.3;

--Display the Movie names who does not recieve certificate
SELECT SERIES_TITLE, CERTIFICATE FROM MOVIE_RATINGS WHERE certificate IS NULL;


-- 'NOT' operator


--Display the Movie names who received certificate
SELECT SERIES_TITLE, CERTIFICATE FROM MOVIE_RATINGS WHERE certificate IS NOT NULL;

--Display all Movie Names Who received certificate other than A and UA+
SELECT SERIES_TITLE, CERTIFICATE FROM MOVIE_RATINGS WHERE certificate NOT IN ('A', 'UA+');

--Display all the movies apart from Crime and Drama Genre
SELECT SERIES_TITLE, GENRE FROM MOVIE_RATINGS WHERE GENRE NOT LIKE '%Crime%' AND GENRE NOT LIKE '%Drama%';

-- max IMDB_RATING
SELECT MAX(IMDB_RATING) FROM MOVIE_RATINGS;

-- MIN IMDB_RATING
SELECT MIN (IMDB_RATING) FROM MOVIE_RATINGS;

--Show me Both Values in One Single Row
SELECT MAX(IMDB_RATING) AS MAX_VALUE, MIN (IMDB_RATING) MIN_VALUE FROM MOVIE_RATINGS;


-- use of 'UNION' operator


--Show me Both values in Two differnt Rows
SELECT MAX(IMDB_RATING) AS MIN_MAX FROM MOVIE_RATINGS
UNION
SELECT MIN(IMDB_RATING) AS MINIMUM_VALUE FROM MOVIE_RATINGS;

--Add row headings or row title for each value
SELECT MAX(IMDB_RATING) AS Ratings, 'Max_Value' AS min_max FROM MOVIE_RATINGS
UNION
SELECT MIN(IMDB_RATING) , 'Min_Value' FROM MOVIE_RATINGS
ORDER BY ratings DESC;


-- 'GROUP BY' and 'HAVING' clause


--Show the total count of Each Certificate
SELECT COUNT(certificate), certificate FROM movie_ratings WHERE certificate IS NOT NULL 
GROUP BY certificate;

--Show total count of each certificate where count is must me greater than 120
SELECT certificate, COUNT(certificate) FROM movie_ratings WHERE certificate IS NOT NULL
GROUP BY certificate
HAVING COUNT(certificate)>120;
