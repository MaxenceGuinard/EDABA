-- Tools/Preferences/Database/NLS/Date_format:    DD/MM/YYYY HH24:MI:SS

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
	given_date DATE NOT NULL,
	deadline DATE NOT NULL,
	courses_id integer NOT NULL,
	PRIMARY KEY (id_)
);


CREATE TABLE quizzes
(
	id_ integer,
	title varchar(40) NOT NULL,
	coefficient FLOAT NOT NULL,
	given_date DATE NOT NULL,
	deadline DATE NOT NULL,
	courses_id integer NOT NULL,
	PRIMARY KEY (id_)
);


CREATE TABLE final_exams
(
	id_ integer,
	title varchar(40) NOT NULL,
	coefficient FLOAT NOT NULL,
	given_date DATE NOT NULL,
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
	homework_id integer NOT NULL,
	students_id integer NOT NULL
);


CREATE TABLE students_quizzes
(
	mark FLOAT NOT NULL,
	quizzes_id integer NOT NULL,
	students_id integer NOT NULL
);


CREATE TABLE students_final_exams
(
	mark FLOAT NOT NULL,
	final_exams_id integer NOT NULL,
	students_id integer NOT NULL
);



-- INDEX

-- TRIGGERS
	--one student can registered for 10 courses max
	--some to test the giving date, if late less points

-- INSERTS
	
	--tutors

		INSERT INTO tutors VALUES (0, 'Richard', 'Peltier', 'Paris');

	--students


	--courses

		INSERT INTO courses VALUES (0, 'Mathematics', 0);


	--homework

		INSERT INTO homework VALUES (0, 'Matrix problem set', 0.5, TO_DATE('2020/06/9 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), TO_DATE('2020/06/16 23:59:00', 'YYYY/MM/DD HH24:MI:SS'), 0);

		-- TO_DATE('1999/04/26 04:40:00', 'YYYY/MM/DD HH24:MI:SS')
	--quizzes


	--final_exams


	-- students_courses


	-- students_homework


	-- students_quizzes



	-- students_final_exams



-- FK

	ALTER TABLE courses ADD CONSTRAINT fk_tutors_id
	FOREIGN KEY (tutors_id) REFERENCES tutors(id_);



	ALTER TABLE students_courses ADD CONSTRAINT fk_courses_id_sc
	FOREIGN KEY (courses_id) REFERENCES courses(id_);

	ALTER TABLE students_courses ADD CONSTRAINT fk_students_id_sc
	FOREIGN KEY (students_id) REFERENCES students(id_);




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





--Deletion
/*
ALTER TABLE courses DROP CONSTRAINT fk_tutors_id;

ALTER TABLE students_courses DROP CONSTRAINT fk_courses_id_sc;
ALTER TABLE students_courses DROP CONSTRAINT fk_students_id_sc;

ALTER TABLE homework DROP CONSTRAINT fk_courses_id_h;
ALTER TABLE quizzes DROP CONSTRAINT fk_courses_id_q;
ALTER TABLE final_exams DROP CONSTRAINT fk_courses_id_fe;

ALTER TABLE students_homework DROP CONSTRAINT fk_homework_id;
ALTER TABLE students_homework DROP CONSTRAINT fk_students_id_h;

ALTER TABLE students_quizzes DROP CONSTRAINT fk_quizzes_id;
ALTER TABLE students_quizzes DROP CONSTRAINT fk_students_id_q;

ALTER TABLE students_final_exams DROP CONSTRAINT fk_final_exams_id;
ALTER TABLE students_final_exams DROP CONSTRAINT fk_students_id_fe;


DROP TABLE tutors;
DROP TABLE students;
DROP TABLE courses;
DROP TABLE homework;
DROP TABLE quizzes;
DROP TABLE final_exams;
DROP TABLE students_courses;
DROP TABLE students_homework;
DROP TABLE students_quizzes;
DROP TABLE students_final_exams;
*/
