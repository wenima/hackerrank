-- solution for https://www.hackerrank.com/challenges/weather-observation-station-7
-- Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u)
-- from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE lower(right(city, 1)) LIKE '[aeiou]';

-- solution for https://www.hackerrank.com/challenges/weather-observation-station-11
-- Query the list of CITY names from STATION that either do not start with vowels
-- or do not end with vowels. Your result cannot contain duplicates.
-- flavor: MS SQL
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) NOT LIKE '[aeiou]'
OR lower(right(city, 1)) NOT LIKE '[aeiou]';

-- solution for https://www.hackerrank.com/challenges/weather-observation-station-11
-- Query the list of CITY names from STATION that do not start with vowels and
-- do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) NOT LIKE '[aeiou]'
AND lower(right(city, 1)) NOT LIKE '[aeiou]';
