-- Joins - it allows you to combine two tables or more together if they have a common column 
-- Inner join - an inner join is going to return rows that are the same in both columns from both tables

SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_demographics AS dem                 
INNER JOIN employee_salary AS sal                  -- ON keyword is going to join the demographics table and the salary table		
ON dem.employee_id = sal.employee_id;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem                 
INNER JOIN employee_salary AS sal                  	
ON dem.employee_id = sal.employee_id;

-- Outer joins

SELECT *
FROM employee_demographics AS dem                 
LEFT JOIN employee_salary AS sal                  	
ON dem.employee_id = sal.employee_id;

SELECT *
FROM employee_demographics AS dem                 
RIGHT JOIN employee_salary AS sal                  	
ON dem.employee_id = sal.employee_id;


-- Self Join
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
    ON emp1.employee_id = emp2.employee_id;
    
-- Joining multiple tables together
SELECT *
FROM employee_demographics AS dem                 
INNER JOIN employee_salary AS sal                  	
ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
ON sal.dept_id = pd.department_id;

SELECT * 
FROM parks_departments;





