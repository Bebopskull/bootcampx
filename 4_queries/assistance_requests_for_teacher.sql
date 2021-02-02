select  count(assistance_requests.*) as Total_Assistances,teachers.name as Teacher
from assistance_requests
join teachers on teachers.id = teacher_id
where name = 'Waylon Boehm'
GROUP BY teachers.name;





-- LHL solution
-- SELECT count(assistance_requests.*) as total_assistances, teachers.name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;