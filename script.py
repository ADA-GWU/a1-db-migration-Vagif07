from psycopg2 import connect, sql
import sys


def connect_to_database():
	try:
	    conn = connect(
	        dbname = "homework",
	        user = "hamzayev",
	        host = "localhost",
	        password = "root"
	    )
	    cursor = conn.cursor()
	    conn.set_session(autocommit=True)
	except Exception as err:
	    cursor = None
	    print ("\npsycopg2 error:", err)
	return cursor


def init_db():
	cursor = connect_to_database()
	cursor.execute(open("initialize_db.sql", "r").read())


def migrate():
	cursor = connect_to_database()
	cursor.execute(open("migration.sql", "r").read())


def rollback():
	cursor = connect_to_database()
	cursor.execute(open("rollback.sql", "r").read())