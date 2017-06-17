-- all easy code challenges on hackerrank other than weather station
-- SQL falvor: MS SQL

-- solution for https://www.hackerrank.com/challenges/more-than-75-marks
-- Query the Name of any student in STUDENTS who scored higher than 75 Marks.
-- Order your output by the last three characters of each name. If two or more
-- students both have names ending in the same last three characters (i.e.: Bobby,
-- Robby, etc.), secondary sort them by ascending ID.
SELECT name
FROM students
WHERE marks > 75
ORDER BY right(name, 3), id;
