-- DDL at the top

-- Drop the database if it already exists
DROP DATABASE IF EXISTS ashesi_db;

-- Create a new database
CREATE DATABASE ashesi_db;

-- Use the new database
USE ashesi_db;

-- Show all databases to verify that ashesi_db was created
SHOW DATABASES;

-- Create a table
CREATE TABLE students (
student_id int(8) primary key auto_increment,
first_name varchar(60),
last_name varchar(60),
dob date
);

-- DML below
-- Populate the table with some data
INSERT INTO students (first_name, last_name, dob) VALUES 
('Amoako', 'Nana', '2024-05-17'),
('Amoako', 'Nana Kojo', '2023-05-17'), 
('Amoako', 'Nana Ama', '2023-05-17'),  
('Kwame', 'Mensah', '2000-01-15'),
('Ama', 'Asante', '1999-07-22'),
('Kojo', 'Appiah', '2001-03-05'),
('Akosua', 'Owusu', '2002-11-30'),
('Yaw', 'Adjei', '2000-05-25'),
('Esi', 'Amankwah', '1998-12-14'),
('Kofi', 'Osei', '2001-08-19'),
('Adwoa', 'Kwarteng', '1999-04-10'),
('Kwasi', 'Boateng', '2002-09-17'),
('Afia', 'Nyarko', '2001-06-29')
;

-- Manipulate the data in the table (example query)
SELECT first_name, last_name FROM students; # view first and last names

-- Delete record
DELETE FROM students WHERE student_id='1';

-- View DB
SELECT * FROM students;

-- Update 
UPDATE students SET first_name='Yaw' WHERE student_id = 8;

-- View DB
SELECT * FROM students;