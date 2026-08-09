# MySQL_DDL-Commands
🗃️ Employee Database — MySQL DDL Project

A Data Analyst assignment focused on designing and managing an Employee Database using MySQL. The project covers table creation, alteration, renaming, truncation, and dropping — along with enforcing data-integrity constraints (PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, CHECK, AUTO_INCREMENT, DEFAULT).

📌 Problem Statement

As a Data Analyst, the company requires an Employee Database to store and manage information related to employees, departments, and locations. The goal is to design this database using MySQL DDL commands, while enforcing appropriate constraints to ensure data integrity and consistency.

🧩 Schema Overview
Table	Key Attributes
Departments_Info	department_id (PK), department_name
Locations	location_id (PK, auto-increment), location_name
Employees	employee_id (PK), employee_name, gender, age, hire_date, designation, salary, department_id (FK), location_id (FK), email

⚙️ What employee_database.sql Does

The script is organized into six clearly commented sections, meant to be run top to bottom:

1. Database & Table Creation

Creates the employee database and the Departments, Location, and Employees tables with primary and foreign keys.

2. Table Alteration
Adds an email column to Employees
Widens the designation column's data type
Drops the age column
Renames hire_date → date_of_joining
3. Table Renaming
Departments → Departments_Info
Location → Locations
4. Table Truncation

Empties all rows from the Employees table while keeping its structure.

🛠️ Tech Stack
Database: MySQL 8.0+
Tooling: MySQL Workbench / MySQL CLI
👤 Author

Data Analyst Assignment — Employee Database DDL & Constraints Project.

5. Database & Table Dropping

Drops the Employees table, then drops the entire employee database.
