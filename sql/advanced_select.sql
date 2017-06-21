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
