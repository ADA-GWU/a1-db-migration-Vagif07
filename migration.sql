--- Renaming st_id TO student_id IN STUDENTS TABLE ---
ALTER TABLE STUDENTS RENAME COLUMN st_id TO student_id;

--- ALTERING the TABLE COLUMNS (CHANGING the LENGTH FROM PREV VALUE TO 30) ---
ALTER TABLE STUDENTS 
	ALTER COLUMN st_last type varchar(30),
	ALTER COLUMN st_name type varchar(30);
  
--- Renaming interests TABLE TO interests_old ---
ALTER TABLE INTERESTS RENAME TO interests_old;

--- CREATING NEW INTERESTS TABLE WITH A DESIRED STRUCTURE ---
CREATE TABLE INTERESTS ( 
	student_id integer,
	interests  text[], 
	FOREIGN KEY (student_id) REFERENCES STUDENTS(student_id)
);

--- INSERTING DATA TO THE NEW DATABASE ---
insert INTO INTERESTS VALUES (1,'{"Tennis","Literature","Math","Chemistry"}');
insert INTO INTERESTS VALUES (2,'{"Tennis","Football"}');
insert INTO INTERESTS VALUES (3,'{"Math","Music","Chess"}');
