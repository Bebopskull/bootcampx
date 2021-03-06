-- Assistance Requests Data


select students.name as students, teachers.name as Teacher, 
assignments.name as assignment, assistance_requests.started_at - assistance_requests.completed_at as duration
from assistance_requests
join students on students.id = student_id
join teachers on teachers.id = teacher_id
join assignments on assignments.id = assignment_id

ORDER BY duration;