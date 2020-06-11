-- INDEX ----------------------------------------------------------------------------------------------------

CREATE UNIQUE INDEX students_courses_index ON 
students_courses(courses_id, students_id);

CREATE UNIQUE INDEX students_homework_index ON
students_homework(homework_id, students_id);

CREATE UNIQUE INDEX students_quizzes_index ON
students_quizzes(quizzes_id, students_id);

CREATE UNIQUE INDEX students_final_exams_index ON
students_final_exams(final_exams_id, students_id);


-- TRIGGERS -------------------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER MAX_TEN_COURSES_FOR_A_STUDENT 
BEFORE INSERT ON students_courses
FOR EACH ROW
DECLARE
	counter number;
BEGIN
		SELECT COUNT(:new.courses_id) INTO counter FROM students_courses;
		IF counter > 9 THEN
			raise_application_error (-20001,'Student had already 10 courses.');
		END IF;
END;
	

CREATE OR REPLACE TRIGGER DATE_PASSED_HOMEWORK
BEFORE INSERT ON students_homework
FOR EACH ROW
DECLARE
	date_ date;
BEGIN
		SELECT deadline INTO date_ FROM homework WHERE id_ = :new.homework_id;

		IF :new.drop_date > date_ THEN
			:new.mark := 0;
		END IF;
END;











/*
	CREATE OR REPLACE TRIGGER DATE_PASSED_QUIZZES
	BEFORE INSERT ON students_quizzes
	FOR EACH ROW
	DECLARE
		date_ date;
	BEGIN
			SELECT deadline INTO date_ FROM quizzes WHERE id_ = :new.quizzes_id;

			IF :new.drop_date > date_ THEN
				:new.mark := 0;
			END IF;
	END;

	CREATE OR REPLACE TRIGGER DATE_PASSED_FINAL_EXAMS
	BEFORE INSERT ON students_final_exams
	FOR EACH ROW
	DECLARE
		date_ date;
	BEGIN
			SELECT deadline INTO date_ FROM final_exams WHERE id_ = :new.final_exams_id;

			IF :new.drop_date > date_ THEN
				:new.mark := 0;
			END IF;
	END;
*/
-- datediff


-- Trash Trigger Triggered

/*
	CREATE TRIGGER NO_DUPLICATE_LINES 
	AFTER INSERT OR UPDATE OF courses_id,students_id ON students_courses
	FOR EACH ROW
	DECLARE
	    rowcnt1 number;
	    rowcnt2 number;
	BEGIN
	  		SELECT COUNT(*) INTO rowcnt1 FROM students_courses;
	        SELECT COUNT(DISTINCT courses_id || students_id) INTO rowcnt2 FROM students_courses;
	        IF rowcnt1 - rowcnt2 = 0 THEN
	            DBMS_OUTPUT.PUT_LINE('BITE');
	        ELSE
	            DELETE FROM students_courses WHERE courses_id = :new.courses_id AND students_id = :new.students_id;
	        END IF;
	END;
*/