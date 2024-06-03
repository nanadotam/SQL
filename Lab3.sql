-- Create database
DROP DATABASE IF EXISTS employeemanagementdb;
CREATE DATABASE employeemanagementdb;
USE employeemanagementdb;

-- Show all databases to verify db was created
SHOW DATABASES;

-- Create tables
CREATE TABLE employee (
EmpId INT PRIMARY KEY,
FirstName VARCHAR(60),
LastName VARCHAR(60),
Email VARCHAR(100) UNIQUE,
Department VARCHAR(50) DEFAULT 'unassigned',
`Salary (GHC)` DECIMAL(10, 2)
);

-- Populate table with data
INSERT INTO employee (EmpID, FirstName, LastName, Email, Department, `Salary (GHC)`) VALUES
(1, 'Kwame', 'Nkrumah', 'kwame.nkrumah@gmail.com', 'Engineering', 5000.00),
(3, 'Yao', 'Mensah', 'Yao.mensah123@example.com', 'Sales', 4500.00),
(6, 'Kofi', 'Mensah', 'kofi.mensah@gmail.com', 'HR', 4600.00),
(7, 'Amina', 'Asante', 'amina.asanteee@yahoo.com', 'Engineering', 4700.00),
(8, 'Esi', 'Owusu', 'esi.owusu@gmail.com', 'Marketing', 4300.00),
(9, 'Amalia', 'Kusi', 'amalia.kusi@yahoo.com', 'Sales', 4400.00),
(10, 'Kwesi', 'Arthur', 'kwesi.arthur@example.com', 'HR', 4500.00),
(13, 'Fiifi', 'Baah', 'fiifi.baah@example.com', 'Sales', 4000.00),
(14, 'Efua', 'Dapaah', 'efua.dapaah@gmail.com', 'HR', 4300.00),
(16, 'Kwabena', 'Osei', 'kwabena.osei@example.com', 'Marketing', 4200.00),
(19, 'Kojo', 'Twum', 'kojo.twum@example.com', 'Engineering', 2000.00)
;

-- POPULATE NULL ENTRIES
-- null email entries
INSERT INTO employee (EmpID, FirstName, LastName, Department, `Salary (GHC)`) VALUES
(2, 'Ama', 'Adu', 'Marketing', 4000.00),
(20, 'Nana', 'Kofi', 'Marketing', 4400.00)
;

-- null dept values
INSERT INTO employee (EmpID, FirstName, LastName, Email, `Salary (GHC)`) VALUES
(4, 'Kendra', 'Antwi', 'ken.antwi@gmail.com', 4800.00),
(15, 'Kweku', 'Asamoah', 'kweku.asamoah@yahoo.com', 2000.00),
(18, 'Akosua', 'Kwarteng', 'akosua.kwarteng@yahoo.com', 4300.00)
;

-- Missing dept and email entries - null
INSERT INTO employee (EmpID, FirstName, LastName, `Salary (GHC)`) VALUES
(11, 'Nana', 'Akuffo', 4900.00)
;

-- Salary below 2000.00
INSERT INTO employee (EmpID, FirstName, LastName, Email, Department, `Salary (GHC)`) VALUES
(5, 'Abigail', 'Sarpong', 'a.sarp89ong@example.com', 'Marketing', 1200.00),
(12, 'Akua', 'Boakye', 'akua.boakye@yahoo.com', 'Marketing', 1500.00),
(17, 'Serwaa', 'Amihere', 'serwaa.amihere@gmail.com', 'Sales', 2.00)
;

-- Concat first and last name as emails if email is null
UPDATE employee
SET Email = CONCAT(FirstName, '.', LastName, '@gmail.com')
WHERE Email IS NULL;

SET SQL_SAFE_UPDATES = 0; -- turn safe mode off temporarily
-- correct employees with salries less than 2000.00
UPDATE employee
SET `Salary (GHC)` = 2000.00
WHERE `Salary (GHC)` < 2000.00;
SET SQL_SAFE_UPDATES = 0; -- turn safe mode on

-- add the check constraint by altering the table
ALTER TABLE employee
ADD CONSTRAINT CHECK (`Salary (GHC)` >= 2000.00);

