-- LHL version


SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;









---my version

-- select cohorts.name as cohort, sum(assistance_requests.completed_at - assistance_requests.started_at )as duration
-- from assistance_requests
-- join students on students.id = student_id
-- join teachers on teachers.id = teacher_id
-- join assignments on assignments.id = assignment_id
-- join cohorts on cohorts.id = students.cohort_id
-- GROUP BY cohorts.name
-- ORDER BY duration;


