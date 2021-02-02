SELECT students.name as student, avg(assignment_submissions.duration)
as average_assignment_duration
FROM students
-- JOIN students ON cohorts.id = cohort_id
 JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL --this is aan optional filter
GROUP BY student
ORDER BY  average_assignment_duration DESC; --DESC to order on descendant order


-- LHL solution

-- SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE end_date IS NULL
-- GROUP BY student
-- ORDER BY average_assignment_duration DESC;