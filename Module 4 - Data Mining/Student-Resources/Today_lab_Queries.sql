use db;

CREATE TABLE Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Inserting values into Departments table
INSERT INTO Departments (department_name) VALUES ('Sales');
INSERT INTO Departments (department_name) VALUES ('Marketing');
INSERT INTO Departments (department_name) VALUES ('HR');

-- Inserting values into Employees table
INSERT INTO Employees (first_name, last_name, hire_date, department_id)
VALUES ('John', 'Doe', '2023-01-15', 1);

INSERT INTO Employees(first_name, last_name, hire_date, department_id)
VALUES ('Al', 'Abass', '2023-11-12', 2);


SELECT * FROM Departments;
SELECT * FROM Employees;


-- -- Retrieve the first_name and last_name of all customers from the customer table where the store_id is 1.--
-- SELECT first_name, last_name 
-- FROM Employees 
-- WHERE department_id = 1;

-- SELECT first_name, last_name
-- FROM Employees 
-- WHERE last_name LIKE 's%';

-- select * from Employees;


-- -- Retrieve All Employees in the Marketing Department:
-- SELECT first_name, last_name 
-- FROM Employees 
-- WHERE department_name = "Marketing";

-- -- Find Employees Hired After a Specific Date:
-- SELECT first_name, last_name, hire_date 
-- FROM Employees 
-- WHERE hire_date > '2023-01-01';

-- -- Count the Number of Employees in Each Department:
-- SELECT department_id, COUNT(*) AS num_employees 
-- FROM Employees 
-- GROUP BY department_id;

-- -- Find the Earliest Hire Date Across All Employees:
-- SELECT MIN(hire_date) AS earliest_hire_date 
-- FROM Employees;

-- -- Find the Latest Hire Date in the Sales Department:
-- SELECT MAX(hire_date) AS latest_hire_date 
-- FROM Employees 
-- WHERE department_id = 1;


-- -- Find All Employees Who Don't Belong to Any Department (Orphaned Records):
-- SELECT first_name, last_name 
-- FROM Employees 
-- WHERE department_id NOT IN (SELECT department_id FROM Departments);


-- -- 

-- SELECT department_name, COUNT(employee_id) AS num_employees 
-- FROM Departments d
-- LEFT JOIN Employees ON department_id = department_id
-- GROUP BY department_name
-- HAVING COUNT(employee_id) > 1;


