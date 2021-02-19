CREATE TABLE STUDENTS
( 
	st_id integer PRIMARY KEY,
	st_name varchar(15),
	st_last varchar(15)
);


INSERT INTO STUDENTS(st_id, st_name, st_last) VALUES (1, 'Konul', 'Gurbanova');
INSERT INTO STUDENTS(st_id, st_name, st_last) VALUES (2, 'Shahnur', 'Isgandarli');
INSERT INTO STUDENTS(st_id, st_name, st_last) VALUES (3, 'Natavan', 'Mammadova');


CREATE TABLE INTERESTS (
	student_id integer,
	interest varchar(15),
	FOREIGN KEY (student_id) REFERENCES STUDENTS(st_id)
);

INSERT INTO INTERESTS(student_id, interest) VALUES (1, 'Tennis');
INSERT INTO INTERESTS(student_id, interest) VALUES (1, 'Literature');
INSERT INTO INTERESTS(student_id, interest) VALUES (1, 'Math');
INSERT INTO INTERESTS(student_id, interest) VALUES (2, 'Tennis');
INSERT INTO INTERESTS(student_id, interest) VALUES (3, 'Math');
INSERT INTO INTERESTS(student_id, interest) VALUES (3, 'Music');
INSERT INTO INTERESTS(student_id, interest) VALUES (2, 'Football');
INSERT INTO INTERESTS(student_id, interest) VALUES (1, 'Chemistry');
INSERT INTO INTERESTS(student_id, interest) VALUES (3, 'Chess');