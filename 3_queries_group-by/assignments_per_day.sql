
SELECT day, count(*) as assignments_per_day
FROM assignments
GROUP BY day
HAVING count(*) >= 10 --this is aan optional filter
ORDER BY day;