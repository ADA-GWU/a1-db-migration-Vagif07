# There are several files in this submission:

	1. Initialize_db.sql - is the file responsible for initial database schema and values
	2. Migration.sql - is the file responsible for migration rules (The file is well documented)
	3. Rollback.sql - is the file responsible for rollback rules (The file is well documented)
	4. Script.py - is responsible for running executing given sql commands.
		Required steps:
		4.1 Create a db named homework (or anything else):
			4.1.1 If db name is not homework then change 'homework' to the db name you have chosen in script.py file
		4.2 Configure user, host and password (So that the script can get connected to the db)
		4.3 Select what you want to do and run the corresponding function:
			4.3.1 - init_db() - initializes the db
			4.3.2 - migrate() - runs the migration
			4.3.3 - rollback() - runs the rollback
			**!Note**: please don't run the commands out of the order
		**!Note**: If for some reason script fails to connect to the server, run the sql commands inside the files mentioned in step 1, 2 and 3 manually.
