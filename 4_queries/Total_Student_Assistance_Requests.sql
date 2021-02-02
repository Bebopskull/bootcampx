select students.name as students, count(assistance_requests.*) as Total_Assistances
from assistance_requests
join students on students.id = student_id
where name = 'Elliot Dickinson'
GROUP BY students.name;