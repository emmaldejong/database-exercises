SHOW DATABASES;
USE employees;

# 1 Create a file named where_exercises.sql. Make sure to use the employees database
# 2 Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('irena', 'vidya', 'maya') ORDER BY first_name ASC;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name asc;
# OR
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' ORDER BY last_name, first_name ASC;
# 3 Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC ;
# 4 Find all employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' and '1999-12-31' ORDER BY birth_date ASC , hire_date DESC ;
# 5 Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date LIKE '%-12-25' ORDER BY birth_date ASC, hire_date DESC ;
# 6 Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';
# ----------------------------------------------------------------------------------------------------
# 1 Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE (first_name = 'irena' OR first_name ='vidya' or first_name ='maya') ORDER BY first_name ASC;
# 2 Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE (first_name = 'irena' OR first_name ='vidya' or first_name ='maya') AND gender = "m" ORDER BY first_name ASC, last_name DESC ;
# 3 Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT concat(first_name, ' ', last_name)
FROM employees
WHERE last_name
      LIKE 'E%'
      AND last_name
         LIKE '%E'
ORDER BY emp_no ASC ;
# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no ASC ;
# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT concat(first_name, ' ', last_name), datediff(curdate(), hire_date)
FROM employees
WHERE hire_date
      BETWEEN '1990-01-01'
      AND '1999-12-31' and birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC ;
# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' ORDER BY gender ='m', birth_date ASC;