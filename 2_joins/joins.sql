-- tyopes of joins

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohorts.id = cohort_id;


-- INNER JOINS : 

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;

-- OUTER JOIN: LEFT , RIGHT of FULL || when whe use LEFT & RIGHT we can omit the OUTER.

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students OUTER JOIN cohorts ON cohorts.id = cohort_id;



-- Rollover students (an example of join)

 SELECT students.name as student_name, email, students.start_date as Start_Date, cohorts.start_date as Cohort_Start_Date
FROM students JOIN cohorts ON cohorts.id = cohort_id
WHERE students.start_date <> cohorts.start_date;