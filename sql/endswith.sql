-- solution for https://www.hackerrank.com/challenges/weather-observation-station-7
-- Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u)
-- from STATION. Your result cannot contain duplicates.
-- flavor: MS SQL
SELECT DISTINCT city
FROM station
WHERE lower(right(city, 1)) LIKE '[aeiou]';
