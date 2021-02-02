-- GROUP BY QUERY



SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;



-- HAVING QUERY

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;

-- The HAVING clause is like WHERE but works on aggregated data.
-- Our WHERE clause works on normal data students.end_date and our HAVING clause works on the aggregated data 
-- count(assignment_submissions.*).

-- The HAVING clause is evaluated before the SELECT so we 
-- can't use the alias total_submissions alias that is created in the SELECT.