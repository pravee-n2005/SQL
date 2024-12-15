###WHERE CLAUSE

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie';


SELECT * 
FROM employee_salary
WHERE salary <= 50000;


SELECT *
FROM employee_demographics
WHERE gender = 'Female';

###! -  NOT EQUAL TO
SELECT *             
FROM employee_demographics
WHERE gender != 'Female';


SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- AND OR NOT -- LOGICAL OPERATORS

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

-- Like Statement- it looks for a specific sequence within that column where u can search for so it doesnt have to be an exact match as long as it has that specified sequence that you've put in there anywhere within that cell
-- % and _
SELECT * 
FROM employee_demographics
WHERE first_name LIKE '%er%';    -- anything that comes before or after it only searches for er that is the work of %


SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a%'; 

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___%';


SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1989%';  