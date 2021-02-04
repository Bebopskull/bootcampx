const args = process.argv;


const { Pool } = require('pg');

const pool = new Pool({
  user: 'nikai',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// SELECT id, name, cohort_id
// FROM students
// LIMIT 5;

// pool.query(`
// SELECT students.id, students.name, cohorts.name
// FROM students
// JOIN cohorts ON cohorts.id = students.cohort_id
// LIMIT 5;
// `)
// .then(res => {
//   console.log(res.rows);
// })
// .catch(err => console.error('query error', err.stack));

pool.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${args[2]}%'
LIMIT ${args[3] || 5};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
});
