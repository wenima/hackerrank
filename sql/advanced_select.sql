-- All SQL Problems from https://www.hackerrank.com/domains/sql/advanced-select
-- Flavor: MS SQL

-- https://www.hackerrank.com/challenges/the-pads
-- Difficulty: Medium
-- Comments: can't use STRING_AGG() as not available on installation
SELECT name + '(' + left(occupation, 1) + ')'
FROM occupations
ORDER BY name;

SELECT "There are a total of ", count(occupation), " ", lower(occupation) + "s."
FROM occupations
GROUP BY occupation
ORDER BY count(occupation), occupation;

-- https://www.hackerrank.com/challenges/the-pads
-- Difficulty: Medium
-- Comments: if flavor was Postgres, use crosstab
SELECT
    [Doctor], [Professor], [Singer], [Actor]
FROM
(
    SELECT ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) [RowNumber], * FROM OCCUPATIONS
) AS tempTable
PIVOT
(
    MAX(Name) FOR Occupation IN ([Doctor], [Professor], [Singer], [Actor])
) AS pivotTable

-- same solution using window functions and case
WITH cte AS (
  SELECT ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) as rn,
  CASE WHEN Occupation='Doctor' THEN Name END AS doctor,
  CASE WHEN Occupation='Professor' THEN Name END AS prof,
  CASE WHEN Occupation='Singer' THEN Name END AS singer,
  CASE WHEN Occupation='Actor' THEN Name END AS actor from Occupations
)

SELECT min(doctor), min(prof), min(singer), min(actor) FROM cte GROUP BY rn
