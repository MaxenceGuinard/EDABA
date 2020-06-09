CREATE TABLE courses
(
	id integer UNSIGNED NOT NULL AUTO_INCREMENT,
	name varchar(40) NOT NULL,
	date_time datetime NOT NULL,
	quizzes_id integer UNSIGNED DEFAULT NULL,
	homework_id integer UNSIGNED DEFAULT NULL,
	final_exams_id integer UNSIGNED DEFAULT NULL,
	tutor_id integer UNSIGNED DEFAULT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE quizzes
(
	id integer UNSIGNED NOT NULL AUTO_INCREMENT,
	deadline datetime NOT NULL,
	mark float,	
	PRIMARY KEY (id)
);

CREATE TABLE homework
(
	id integer UNSIGNED NOT NULL AUTO_INCREMENT,
	deadline datetime NOT NULL,
	mark float,	
	PRIMARY KEY (id)
);

CREATE TABLE final_exams
(
	id integer UNSIGNED NOT NULL AUTO_INCREMENT,
	deadline datetime NOT NULL,
	mark float,	
	PRIMARY KEY (id)
);


CREATE TABLE students_courses
(
	courses_id integer UNSIGNED DEFAULT NULL,
	students_id integer UNSIGNED DEFAULT NULL
);

CREATE TABLE students
(
	id integer UNSIGNED NOT NULL AUTO_INCREMENT,
	name varchar(40) NOT NULL,
	surname varchar(40) NOT NULL,
	address varchar(40) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE tutors
(
	id integer UNSIGNED NOT NULL AUTO_INCREMENT,
	name varchar(40) NOT NULL,
	surname varchar(40) NOT NULL,
	address varchar(40) NOT NULL,
	PRIMARY KEY (id)
);

ALTER TABLE courses ADD CONSTRAINT fk_quizzes_id
FOREIGN KEY (quizzes) REFERENCES quizzes(id);

ALTER TABLE courses ADD CONSTRAINT fk_homework_id
FOREIGN KEY (homework) REFERENCES homework(id);

ALTER TABLE courses ADD CONSTRAINT fk_final_exams_id
FOREIGN KEY (final_exams) REFERENCES final_exams(id);

ALTER TABLE courses ADD CONSTRAINT fk_tutors_exams_id
FOREIGN KEY (tutors) REFERENCES tutors(id);



ALTER TABLE students_courses ADD CONSTRAINT fk_courses_id
FOREIGN KEY (courses_id) REFERENCES courses(id);

ALTER TABLE students_courses ADD CONSTRAINT fk_students_id
FOREIGN KEY (students) REFERENCES students(id);


