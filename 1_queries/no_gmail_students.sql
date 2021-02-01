
SELECT name, id, cohort_id FROM students 
WHERE email NOT like('%gmail.%') AND phone IS NULL;

