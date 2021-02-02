-- Average Cohort Assistance Time


select  avg( assistance_requests.started_at - assistance_requests.created_at ) as duration
from assistance_requests
join students on students.id = student_id
join teachers on teachers.id = teacher_id
join assignments on assignments.id = assignment_id
join cohorts on cohorts.id = students.cohort_id;

-- group BY cohorts.name;


-- lhl version
-- SELECT avg(started_at-created_at) as average_wait_time
-- FROM assistance_requests;