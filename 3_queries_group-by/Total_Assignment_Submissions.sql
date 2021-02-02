SELECT cohorts.name as cohort_name, count(*) as total_submissions
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohort_name
-- HAVING count(*) >= 18 --this is aan optional filter
ORDER BY  total_submissions DESC; --DESC to order on descendant order