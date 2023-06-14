DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS cohorts;
DROP TABLE IF EXISTS student_tasks;
DROP TABLE IF EXISTS branch_tasks;
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS branch;
DROP TABLE IF EXISTS appointments;

CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE branch (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE branch_tasks (
  id SERIAL PRIMARY KEY,
  task_id INT NOT NULL,
  branch_id INT NOT NULL,
  FOREIGN KEY (task_id) REFERENCES tasks(id) ON DELETE CASCADE,
  FOREIGN KEY (branch_id) REFERENCES branch(id) ON DELETE CASCADE
);

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  firstname VARCHAR (30) NOT NULL,
  middlename VARCHAR (30),
  lastname VARCHAR (30) NOT NULL,
  email VARCHAR (255) NOT NULL,
  location TEXT NOT NULL
);


CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  firstname VARCHAR (30) NOT NULL,
  middlename VARCHAR (30),
  lastname VARCHAR (30) NOT NULL, 
  age INT NOT NULL,
  location TEXT NOT NULL,
  base TEXT,
  active BOOLEAN NOT NULL,
  phonenumber BIGINT NOT NULL,
  email TEXT NOT NULL,
  dutystatus TEXT NOT NULL,
  ets_date DATE NOT NULL
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  note TEXT NOT NULL,
  student_id INT NOT NULL,
  FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);


CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  courseid VARCHAR (255) NOT NULL,
  startdate TEXT NOT NULL,
  enddate TEXT NOT NULL,
  numberofstudents INT NOT NULL
);

CREATE TABLE student_tasks (
  id SERIAL PRIMARY KEY,
  completed BOOLEAN NOT NULL
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(100) NOT NULL
);


ALTER TABLE instructors 
ADD COLUMN cohort_id INT,
ADD CONSTRAINT fk_cohort_id FOREIGN KEY (cohort_id) REFERENCES cohorts(id) ON DELETE CASCADE;

ALTER TABLE students 
ADD COLUMN branch_id INT,
ADD COLUMN instructor_id INT,
ADD COLUMN cohort_id INT,
ADD COLUMN appointments VARCHAR (100),
ADD CONSTRAINT fk_branch_id FOREIGN KEY (branch_id) REFERENCES branch(id) ON DELETE CASCADE,
ADD CONSTRAINT fk_instructor_id FOREIGN KEY (instructor_id) REFERENCES instructors(id) ON DELETE CASCADE,
ADD CONSTRAINT fk_cohort_id FOREIGN KEY (cohort_id) REFERENCES cohorts(id) ON DELETE CASCADE;

ALTER TABLE cohorts 
ADD COLUMN instructor_id INT,
ADD CONSTRAINT fk_instructor_id FOREIGN KEY (instructor_id) REFERENCES instructors(id) ON DELETE CASCADE;

ALTER TABLE student_tasks
ADD COLUMN student_id INT,
ADD COLUMN branch_tasks_id INT,
ADD CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
ADD CONSTRAINT fk_branch_tasks_id FOREIGN KEY (branch_tasks_id) REFERENCES branch_tasks(id) ON DELETE CASCADE;
