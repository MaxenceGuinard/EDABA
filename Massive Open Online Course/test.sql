-- test students_courses_index (student register twice to the same course)
INSERT INTO students_courses VALUES (0, 0);

-- test students_homework_index (student answer twice to the same homework)
INSERT INTO students_homework VALUES (15, TO_DATE('2020/06/15 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), 0, 1);

-- test students_quizzes_index (student answer twice to the same quizz)
INSERT INTO students_quizzes VALUES (12, TO_DATE('2020/06/15 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), 0, 0);

-- test students_final_exams_index (student answer twice to the same final exam)
INSERT INTO students_final_exams VALUES (13, TO_DATE('2020/06/15 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), 0, 1);



-- test MAX_TEN_COURSES_FOR_A_STUDENT trigger (student try to register for a 11th course)
INSERT INTO students_courses VALUES (10, 0);

-- test DATE_PASSED_HOMEWORK trigger (student drop homework too late (mark = 0))
DELETE FROM students_homework WHERE homework_id = 0 AND students_id = 1;
INSERT INTO students_homework VALUES (15, TO_DATE('2020/06/16 23:59:01', 'YYYY/MM/DD HH24:MI:SS'), 0, 1);

-- test DATE_PASSED_QUIZZES trigger (student drop quizz too late (mark = 0))
DELETE FROM	students_quizzes WHERE quizzes_id = 0 AND students_id = 0;
INSERT INTO students_quizzes VALUES (12, TO_DATE('2020/06/16 23:59:01', 'YYYY/MM/DD HH24:MI:SS'), 0, 0);

-- test DATE_PASSED_FINAL_EXAMS trigger (student drop final exam too late (mark = 0))
DELETE FROM students_final_exams WHERE final_exams_id = 0 AND students_id = 1;
INSERT INTO students_final_exams VALUES (13, TO_DATE('2020/06/16 23:59:01', 'YYYY/MM/DD HH24:MI:SS'), 0, 1);			

