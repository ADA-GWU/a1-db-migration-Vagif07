--- ADD NEW COLUMN TO THE INTERESTS TABLE ---
ALTER TABLE interests ADD COLUMN interest text;

--- INSERT VALUES SINGLE FROM UNNESTED ARRAY ---
INSERT INTO INTERESTS (student_id, interest) SELECT student_id, unnest(interests) FROM interests;

--- FILTER COLUMNS FROM EMPTY VALUES ---
delete from interests where interests.interest is null;

--- REMOVE INTERESTS COLUMNS FORM INTERESTS TABLE ---
ALTER TABLE interests DROP COLUMN interests;

--- Renaming student_id TO st_id IN STUDENTS TABLE ---
ALTER TABLE STUDENTS RENAME COLUMN student_id TO st_id;

--- ALTERING the TABLE COLUMNS (CHANGING the LENGTH FROM PREV VALUE TO 15) ---
ALTER TABLE STUDENTS 
	ALTER COLUMN st_last type varchar(15),
	ALTER COLUMN st_name type varchar(15);
