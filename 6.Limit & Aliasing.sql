-- Limit & Aliasing
-- Limiit-The LIMIT keyword is used in MySQL to restrict the number of rows returned by a query. It's often used for pagination or when you only want a specific number of results.

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1;

-- Aliasing- change the name of the column/Aliasing is a way to give a temporary name to a table or column in a query. It's useful for making the query results more readable or when working with complex queries.

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;