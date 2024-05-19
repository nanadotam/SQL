-- Drop the database if it already exists
DROP DATABASE IF EXISTS Studentdb;

-- Create a new database
CREATE DATABASE Studentdb;

-- Use the new database
USE Studentdb;

-- Show all databases to verify that db was created
SHOW DATABASES;

-- Create a table
CREATE TABLE Student (
StudentId int(8) primary key,
FirstName varchar(60),
LastName varchar(60),
Major varchar(60),
YearGroup int(4),
dob date
);

-- Insert data into the table
INSERT INTO Student (StudentId, FirstName, LastName, Major, YearGroup, dob) VALUES
(50292026, 'Peter', 'Rice', 'Computer Science', 2026, '2000-01-27'),
(77342026, 'Nanna', 'Abankwa', 'Economics', 2025, '2000-12-21'),
(22192024, 'Griffin', 'Morgan', 'Electrical Engineering', 2024, '2003-06-06'),
(03122026, 'Nana Ayeyi', 'Djan', 'Business', 2026, '2000-07-13'),
(00422026, 'Stephane', 'Cudjoe', 'Geography', 2027, '1999-07-13'),
(33682025, 'Seth', 'Nwolley', 'Physics', 2025, '2004-04-12'),
(99992024, 'Allotei', 'Allotey', 'Poetry', 2024, '1998-11-06');


-- LAB ASSIGNMENT SECTION: UPDATE AND OPTIMIZE DB

-- Update year group
UPDATE Student Set YearGroup = 2026 WHERE StudentId = 77342026; 	# Update Nana Abankwa
UPDATE Student Set YearGroup = 2026 WHERE StudentId = 00422026; 	# Update Stephane Cudjoe

-- Update Djan Major
UPDATE Student Set Major = 'Computer Science' WHERE StudentId = 03122026; 	

-- Update Allotey Name
UPDATE Student Set LastName = 'Allotey Jnr.' WHERE StudentId = 99992024; 	

-- Remove Seth from school
DELETE FROM Student WHERE StudentId = 33682025;

-- Update Peter DOB
UPDATE Student Set dob = '1993-01-27' WHERE StudentId = 50292026;

-- Insert two more students
INSERT INTO Student (StudentId, FirstName, LastName, Major, YearGroup, dob) VALUES
(56782026, 'Reginald', 'Ofori', 'Management Information Systems', 2026, '2004-02-16'),
(04192026, 'Yaa', 'Asante', 'Computer Science', 2026, '2003-12-25')
;

-- Assign everyone a career
ALTER TABLE Student ADD COLUMN Career varchar(60);

UPDATE Student SET Career = 'Software Engineer' WHERE StudentId = 50292026;
UPDATE Student SET Career = 'Economist' WHERE StudentId = 77342026;
UPDATE Student SET Career = 'Electrical Engineer' WHERE StudentId = 22192024;
UPDATE Student SET Career = 'DevOps Engineer' WHERE StudentId = 03122026;
UPDATE Student SET Career = 'Geologist' WHERE StudentId = 00422026;
UPDATE Student SET Career = 'Astronomer' WHERE StudentId = 33682025;
UPDATE Student SET Career = 'Poet' WHERE StudentId = 99992024;
UPDATE Student SET Career = 'AI Engineer' WHERE StudentId = 04192026;
UPDATE Student SET Career = 'Cloud Computing Engineer' WHERE StudentId = 56782026;

-- View DB
SELECT * FROM Student;





