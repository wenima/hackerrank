-- SQL falvor: MS SQL

-- solution for https://www.hackerrank.com/challenges/weather-observation-station-5
-- flavor: MS SQL
WITH top_and_bottom as (
    SELECT city, len(city) as length, rank() OVER(ORDER BY LEN(city), city) as rnk
    FROM station
    GROUP BY city)
SELECT city, length
FROM top_and_bottom
WHERE rnk = 1
OR rnk = (select count(distinct city) from station);

-- solution for https://www.hackerrank.com/challenges/weather-observation-station-6
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u)
-- from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) LIKE '[aeiou]';


-- solution for https://www.hackerrank.com/challenges/weather-observation-station-7
-- Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u)
-- from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE lower(right(city, 1)) LIKE '[aeiou]';

-- solution for https://www.hackerrank.com/challenges/weather-observation-station-8
-- Query the list of CITY names starting and ending with vowels (i.e., a, e, i, o, or u)
-- from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) LIKE '[aeiou]'
AND lower(right(city, 1)) LIKE '[aeiou]';

-- solution for https://www.hackerrank.com/challenges/weather-observation-station-9
-- Query the list of CITY names from STATION that do not start with vowels.
-- Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) NOT LIKE '[aeiou]';


-- solution for https://www.hackerrank.com/challenges/weather-observation-station-10
-- Query the list of CITY names not ending with vowels (i.e., a, e, i, o, or u)
-- from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE lower(right(city, 1)) NOT LIKE '[aeiou]';

-- solution for https://www.hackerrank.com/challenges/weather-observation-station-11
-- Query the list of CITY names from STATION that either do not start with vowels
-- or do not end with vowels. Your result cannot contain duplicates.
-- flavor: MS SQL
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) NOT LIKE '[aeiou]'
OR lower(right(city, 1)) NOT LIKE '[aeiou]';

-- solution for https://www.hackerrank.com/challenges/weather-observation-station-12
-- Query the list of CITY names from STATION that do not start with vowels and
-- do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) NOT LIKE '[aeiou]'
AND lower(right(city, 1)) NOT LIKE '[aeiou]';

-- solution for https://www.hackerrank.com/challenges/weather-observation-station-18
-- Query the Manhattan Distance between points P1 and P2 and round it to a scale of  decimal places.
