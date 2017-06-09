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
