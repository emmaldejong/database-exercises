SHOW DATABASES;
USE employees;

# 3 Find all employees whose last name starts AND ends with 'E' — 30,723 rows.
SELECT concat(first_name, ' ', last_name)
FROM employees
WHERE last_name
      LIKE 'E%E'
ORDER BY emp_no ASC ;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT concat(first_name, ' ', last_name, ' has been working at the company for ', datediff(curdate(), hire_date), ' days.')
FROM employees
WHERE hire_date
      BETWEEN '1990-01-01'
      AND '1999-12-31' and birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC ;
