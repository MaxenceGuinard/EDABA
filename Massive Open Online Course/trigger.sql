CREATE OR REPLACE TRIGGER MAX_TEN_COURSES_FOR_A_STUDENT 
BEFORE INSERT ON students_courses
FOR EACH ROW
DECLARE
	counter integer;
BEGIN
		SELECT COUNT(DISTINCT courses_id || :new.students_id) INTO counter FROM students_courses WHERE students_id = :new.students_id;
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