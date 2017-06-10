-- solution for https://www.hackerrank.com/challenges/weather-observation-station-6
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u)
-- from STATION. Your result cannot contain duplicates.
-- flavor: MS SQL
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) LIKE '[aeiou]';
