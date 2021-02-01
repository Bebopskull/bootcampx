-- table cohorts

CREATE TABLE cohorts(
	id SERIAL PRIMARY KEY,
	name VARCHAR(250) NOT NULL, 
	start_date DATE, 
	end_date DATE
);


-- TAble students---

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY, 
	name VARCHAR(255),
	email VARCHAR(255), 
	phone VARCHAR(35), 
	github VARCHAR(255), 
	start_date DATE, 
	end_date DATE, 
	cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);

