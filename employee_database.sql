CREATE DATABASE employee;

USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);
CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    Employee_name VARCHAR(100),
    Gender CHAR(1),
    Age INT,
    Hire_date DATE,
    Designation VARCHAR(50),
    Salary DECIMAL(10, 2),
    department_id INT,
    location_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
USE employee;

-- Add "email" column
ALTER TABLE Employees 
ADD COLUMN email VARCHAR(150);

-- Modify data type of "designation"
ALTER TABLE Employees 
MODIFY COLUMN Designation VARCHAR(150);

-- Drop "age" column
ALTER TABLE Employees 
DROP COLUMN Age;

-- Rename "hire_date" to "date_of_joining"
ALTER TABLE Employees 
RENAME COLUMN Hire_date TO date_of_joining;

-- 3: Table Renaming (RENAME)
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;

-- 4: Table Truncation (TRUNCATE)
TRUNCATE TABLE Employees;

-- 5: Database & Table Dropping (DROP)
DROP TABLE Employees;
DROP DATABASE employee_db;