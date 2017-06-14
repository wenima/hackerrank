-- solution for https://www.hackerrank.com/challenges/weather-observation-station-9
-- Query the list of CITY names from STATION that do not start with vowels.
-- Your result cannot contain duplicates.
-- flavor: MS SQL
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) NOT LIKE '[aeiou]';
