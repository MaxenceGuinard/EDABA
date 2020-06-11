CREATE UNIQUE INDEX students_courses_index ON 
students_courses(courses_id, students_id);

CREATE UNIQUE INDEX students_homework_index ON
students_homework(homework_id, students_id);

CREATE UNIQUE INDEX students_quizzes_index ON
students_quizzes(quizzes_id, students_id);

CREATE UNIQUE INDEX students_final_exams_index ON
students_final_exams(final_exams_id, students_id);