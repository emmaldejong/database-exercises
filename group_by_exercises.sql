SHOW DATABASES;
USE employees;

# In your script, use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title
  FROM titles;

# Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name ASC;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE  'E%' AND last_name LIKE '%E'
GROUP BY first_name, last_name;

# Find the unique last names with a 'q' but not 'qu'
SELECT last_name
FROM employees
WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT first_name, COUNT(*)
FROM employees
GROUP BY first_name
ORDER BY COUNT(*);

#n Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY COUNT(*);

# average salary functions
SELECT emp_no, avg(salary)
FROM salaries
GROUP BY emp_no
LIMIT 5;

SELECT avg(salary)
FROM salaries WHERE emp_no = 10004;

#top 10 most common hire dates
SELECT hire_date, count(*)
FROM employees
GROUP BY hire_date
ORDER BY count(*) DESC
LIMIT 10;
