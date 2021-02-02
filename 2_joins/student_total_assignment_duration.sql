-- 'Ibrahim Schimmel'

SELECT SUM(assignment_submissions.duration) as total_duration
FROM students JOIN assignment_submissions ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';



-- lhl solution
-- SELECT SUM(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';