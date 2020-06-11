DROP TRIGGER MAX_TEN_COURSES_FOR_A_STUDENT;
DROP TRIGGER DATE_PASSED_HOMEWORK;
DROP TRIGGER DATE_PASSED_QUIZZES;
DROP TRIGGER DATE_PASSED_FINAL_EXAMS;

DROP INDEX students_courses_index;
DROP INDEX students_homework_index;
DROP INDEX students_quizzes_index;
DROP INDEX students_final_exams_index;

DROP TABLE tutors cascade constraints;
DROP TABLE students cascade constraints;
DROP TABLE courses cascade constraints;
DROP TABLE homework cascade constraints;
DROP TABLE quizzes cascade constraints;
DROP TABLE final_exams cascade constraints;
DROP TABLE students_courses cascade constraints;
DROP TABLE students_homework cascade constraints;
DROP TABLE students_quizzes cascade constraints;
DROP TABLE students_final_exams cascade constraints;