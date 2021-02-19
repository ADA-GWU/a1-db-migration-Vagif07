--- REMOVE DATABASE TABLE GENERATED DURING MIGRATION ---
DROP TABLE INTERESTS;

--- RENAME BACK THE OLD DATABASE TABLE ---
alter table interests_old rename to INTERESTS;

--- Renaming student_id TO st_id IN STUDENTS TABLE ---
ALTER TABLE STUDENTS RENAME COLUMN student_id TO st_id;

--- ALTERING the TABLE COLUMNS (CHANGING the LENGTH FROM PREV VALUE TO 15) ---
ALTER TABLE STUDENTS 
	ALTER COLUMN st_last type varchar(15),
	ALTER COLUMN st_name type varchar(15);