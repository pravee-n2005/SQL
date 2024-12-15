-- Group by - group the rows that has the same value in the specified column or columns that you are actually grouping on. u can use aggregate function on rows

SELECT * 
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary	
FROM employee_salary
GROUP BY occupation, salary;


SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY - sort the result in ascending or descending
SELECT *
FROM employee_demographics
ORDER BY first_name ASC;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY 5,4;                 -- numbers define the position of the column