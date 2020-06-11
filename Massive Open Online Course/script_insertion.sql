	-- INSERTS
		
		--tutors

			INSERT INTO tutors VALUES (0, 'Richard', 'Peltier', 'Paris');

		--students

			INSERT INTO students VALUES (0, 'Kevin', 'Smith', 'London');
			INSERT INTO students VALUES (1, 'Jean', 'Philips', 'Phoenix');

		--courses

			INSERT INTO courses VALUES (0, 'EPRST', 0);
			INSERT INTO courses VALUES (1, 'Polish', 0);
			INSERT INTO courses VALUES (2, 'EDABA', 0);
			INSERT INTO courses VALUES (3, 'EOPSY', 0);
			INSERT INTO courses VALUES (4, 'EOOP', 0);
			INSERT INTO courses VALUES (5, 'EMAR', 0);
			INSERT INTO courses VALUES (6, 'RAND1', 0);
			INSERT INTO courses VALUES (7, 'RAND2', 0);
			INSERT INTO courses VALUES (8, 'RAND3', 0);
			INSERT INTO courses VALUES (9, 'RAND4', 0);
			INSERT INTO courses VALUES (10, 'RAND5', 0);




		--homework

			INSERT INTO homework VALUES (0, 'Matrix problem set', 0.5, TO_DATE('2020/06/9 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), TO_DATE('2020/06/16 23:59:00', 'YYYY/MM/DD HH24:MI:SS'), 0);

		--quizzes

			INSERT INTO quizzes VALUES (0, 'Matrix quizz', 1, TO_DATE('2020/06/9 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), TO_DATE('2020/06/16 23:59:00', 'YYYY/MM/DD HH24:MI:SS'), 0);

		--final_exams

			INSERT INTO final_exams VALUES (0, 'Matrix exam', 2.5, TO_DATE('2020/06/9 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), TO_DATE('2020/06/16 23:59:00', 'YYYY/MM/DD HH24:MI:SS'), 0);


		-- students_courses

			INSERT INTO students_courses VALUES (0, 0);
			INSERT INTO students_courses VALUES (0, 1);
			INSERT INTO students_courses VALUES (0, 2);
			INSERT INTO students_courses VALUES (0, 3);
			INSERT INTO students_courses VALUES (0, 4);
			INSERT INTO students_courses VALUES (0, 5);
			INSERT INTO students_courses VALUES (0, 6);
			INSERT INTO students_courses VALUES (0, 7);
			INSERT INTO students_courses VALUES (0, 8);

	/*
			INSERT INTO students_courses VALUES (0, 9);
			INSERT INTO students_courses VALUES (0, 10);

			DELETE FROM students_courses WHERE courses_id = 9;
			DELETE FROM students_courses WHERE courses_id = 10;
	*/		

		-- students_homework

			INSERT INTO students_homework VALUES (15, TO_DATE('2020/06/15 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), 0, 1);

		-- students_quizzes

			INSERT INTO students_quizzes VALUES (12, TO_DATE('2020/06/15 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), 0, 0);

		-- students_final_exams

			INSERT INTO students_final_exams VALUES (13, TO_DATE('2020/06/15 12:00:00', 'YYYY/MM/DD HH24:MI:SS'), 0, 1);
