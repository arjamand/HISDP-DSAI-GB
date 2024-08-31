-- Task 1.1
-- INSERT INTO Departments (department_name) VALUES ('Finance');
-- INSERT INTO Departments (department_name) VALUES ('IT');
-- INSERT INTO Departments (department_name) VALUES ('Operations');

-- Task 1.2
-- using multiple values at once method

-- INSERT INTO Employees (first_name, last_name, hire_date, department_id)
-- VALUES ('Alice', 'Williams', '2023-02-10', 
-- (SELECT department_id FROM db.departments WHERE department_name = 'Finance')),
-- ('Bob', 'Smith', '2023-03-15',
-- (SELECT department_id FROM db.departments WHERE department_name = 'IT')),
-- ('Charlie', 'Johnson', '2023-04-20',
-- (SELECT department_id FROM db.departments WHERE department_name = 'Operations')),
-- ('David', 'Brown', '2023-05-25',
-- (SELECT department_id FROM db.departments WHERE department_name ='Finance')),
-- ('Eva', 'Jones', '2023-06-30', 
-- (SELECT department_id FROM db.departments WHERE department_name = 'IT'));


-- Task 2.1
-- SELECT CONCAT(first_name," ",last_name) AS 'Employee Name' FROM db.employees 
-- WHERE department_id = (SELECT department_id from db.departments where department_name = 'Finance');


-- Task 2.2
-- SELECT * FROM db.employees WHERE hire_date LIKE '2023%'; 


-- Task 2.3
-- SELECT department_id, COUNT(*) AS num_employees
-- FROM db.employees
-- GROUP BY department_id
-- ORDER BY num_employees;
--  

-- Task 3.1

-- turning safe mode off and on 
-- SET SQL_SAFE_UPDATES = 0;

-- UPDATE departments
-- SET department_name = 'Operations and Logistics'
-- WHERE department_name = 'Operations';



-- Task 3.2
-- using common table expression 

-- WITH most_recent_it_employee AS (
--     SELECT employee_id 
--     FROM db.employees
--     WHERE department_id = (
--         SELECT department_id 
--         FROM db.departments 
--         WHERE department_name = 'IT'
--     )
--     ORDER BY hire_date DESC
--     LIMIT 1
-- )
-- DELETE FROM db.employees
-- WHERE employee_id = (SELECT employee_id FROM most_recent_it_employee);



-- Task 4.1
SELECT d.department_name, e.first_name, e.last_name
FROM db.employees e, db.departments d
WHERE e.department_id = d.department_id
AND e.department_id IN (
        SELECT department_id FROM Employees 
        GROUP BY department_id 
        HAVING COUNT(*) > 2
    );



