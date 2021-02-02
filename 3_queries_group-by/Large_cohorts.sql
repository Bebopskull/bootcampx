SELECT cohort_id as cohort_name, count(*) as total_submissions
FROM cohorts
JOIN students ON  cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(*) >= 18 --this is aan optional filter
ORDER BY cohort_name;