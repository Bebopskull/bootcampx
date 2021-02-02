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


-- SUBQUERIES///////////////

SELECT (
  SELECT count(assignments)
  FROM assignments
)-count(assignment_submissions) as total_incomplete
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- If a query returns a single value, we can use it in our SELECT statement just like any other value.

SELECT (
  SELECT count(*)
  FROM table_name
) as total, other_column
FROM other_table_name
ORDER BY total;

-- FROM sub select table/////

-- The result of a select is effectively a table that can be used as you would use a table
-- So a select statement may be used as a data source of another select statement.

SELECT avg(total_students) as average_students
FROM (
  SELECT count(students) as total_students, cohorts.name as cohort_name
  FROM students
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
) as totals_table;


-- Search within a result set IN/////////////////////

-- A sub query's results can also be used within the WHERE clause of a query. 
-- This is perhaps the most common way of using a sub select.

-- Let's say we wanted to get the name of all incomplete assignments for a student. 
-- It's a fairly simple query to get all completed assignments for a student.

SELECT assignment_id
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';















