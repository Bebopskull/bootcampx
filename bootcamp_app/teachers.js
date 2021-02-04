const args = process.argv;


const { Pool } = require('pg');

const pool = new Pool({
  user: 'nikai',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


// parametrized query //to avoid SQL injection
const queryString =`

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;

`;

const cohortName = process.argv[2];
const values = (`%${cohortName}%`)

// pool.query(queryString)
// .then(res => {
//   res.rows.forEach(user => {
//     console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
//   })
// });

pool.query(queryString, values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});