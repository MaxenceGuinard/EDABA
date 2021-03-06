CREATE TABLE tutors
(
	id_ integer,
	name varchar(40) NOT NULL,
	surname varchar(40) NOT NULL,
	address varchar(40) NOT NULL,
	PRIMARY KEY (id_)
);


CREATE TABLE students
(
	id_ integer,
	name varchar(40) NOT NULL,
	surname varchar(40) NOT NULL,
	address varchar(40) NOT NULL,
	PRIMARY KEY (id_)
);


CREATE TABLE courses
(
	id_ integer,
	title varchar(40) NOT NULL,
	tutors_id integer NOT NULL,
	PRIMARY KEY (id_)
);


CREATE TABLE homework
(
	id_ integer,
	title varchar(40) NOT NULL,
	coefficient FLOAT NOT NULL,
	publish_date DATE NOT NULL,
	deadline DATE NOT NULL,
	courses_id integer NOT NULL,
	PRIMARY KEY (id_)
);


CREATE TABLE quizzes
(
	id_ integer,
	title varchar(40) NOT NULL,
	coefficient FLOAT NOT NULL,
	publish_date DATE NOT NULL,
	deadline DATE NOT NULL,
	courses_id integer NOT NULL,
	PRIMARY KEY (id_)
);


CREATE TABLE final_exams
(
	id_ integer,
	title varchar(40) NOT NULL,
	coefficient FLOAT NOT NULL,
	publish_date DATE NOT NULL,
	deadline DATE NOT NULL,
	courses_id integer NOT NULL,
	PRIMARY KEY (id_)
);


CREATE TABLE students_courses
(
	courses_id integer NOT NULL,
	students_id integer NOT NULL
	
);


CREATE TABLE students_homework
(
	mark FLOAT NOT NULL,
	drop_date DATE NOT NULL,
	homework_id integer NOT NULL,
	students_id integer NOT NULL
);


CREATE TABLE students_quizzes
(
	mark FLOAT NOT NULL,
	drop_date DATE NOT NULL,
	quizzes_id integer NOT NULL,
	students_id integer NOT NULL
);


CREATE TABLE students_final_exams
(
	mark FLOAT NOT NULL,
	drop_date DATE NOT NULL,
	final_exams_id integer NOT NULL,
	students_id integer NOT NULL
);



ALTER TABLE courses ADD CONSTRAINT fk_tutors_id
FOREIGN KEY (tutors_id) REFERENCES tutors(id_);



ALTER TABLE students_courses ADD CONSTRAINT fk_students_id_sc
FOREIGN KEY (students_id) REFERENCES students(id_);

ALTER TABLE students_courses ADD CONSTRAINT fk_courses_id_sc
FOREIGN KEY (courses_id) REFERENCES courses(id_);



ALTER TABLE homework ADD CONSTRAINT fk_courses_id_h
FOREIGN KEY (courses_id) REFERENCES courses(id_);

ALTER TABLE quizzes ADD CONSTRAINT fk_courses_id_q
FOREIGN KEY (courses_id) REFERENCES courses(id_);

ALTER TABLE final_exams ADD CONSTRAINT fk_courses_id_fe
FOREIGN KEY (courses_id) REFERENCES courses(id_);



ALTER TABLE students_homework ADD CONSTRAINT fk_homework_id
FOREIGN KEY (homework_id) REFERENCES homework(id_);

ALTER TABLE students_homework ADD CONSTRAINT fk_students_id_h
FOREIGN KEY (students_id) REFERENCES students(id_);


ALTER TABLE students_quizzes ADD CONSTRAINT fk_quizzes_id
FOREIGN KEY (quizzes_id) REFERENCES quizzes(id_);

ALTER TABLE students_quizzes ADD CONSTRAINT fk_students_id_q
FOREIGN KEY (students_id) REFERENCES students(id_);


ALTER TABLE students_final_exams ADD CONSTRAINT fk_final_exams_id
FOREIGN KEY (final_exams_id) REFERENCES final_exams(id_);

ALTER TABLE students_final_exams ADD CONSTRAINT fk_students_id_fe
FOREIGN KEY (students_id) REFERENCES students(id_);

