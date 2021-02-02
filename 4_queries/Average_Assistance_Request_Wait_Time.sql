select cohorts.name as cohort, avg(assistance_requests.completed_at - assistance_requests.started_at )as duration
from assistance_requests
join students on students.id = student_id
join teachers on teachers.id = teacher_id
join assignments on assignments.id = assignment_id
join cohorts on cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY duration DESC
LIMIT 1;