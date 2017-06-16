-- solution for https://www.hackerrank.com/challenges/weather-observation-station-11
-- Query the list of CITY names from STATION that either do not start with vowels
-- or do not end with vowels. Your result cannot contain duplicates.
-- flavor: MS SQL
SELECT DISTINCT city
FROM station
WHERE lower(left(city, 1)) NOT LIKE '[aeiou]'
OR lower(right(city, 1)) NOT LIKE '[aeiou]';
