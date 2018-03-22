USE employees;

-- ================================= RELATIONSHIP DRILLS
-- concat the max salaries of the first two employeess

-- get current manager name of Sales department (use subqueries)
SELECT e.first_name, e.last_name
FROM employees AS e
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date >= curdate() and dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
  )
);
-- get all senior engineers in customer service department
SELECT e.first_name, e.last_name, t.title, d.dept_name, emp.to_date
FROM employees AS e
  JOIN titles AS t
    ON e.emp_no = t.emp_no
  JOIN dept_emp AS emp
    ON e.emp_no = emp.emp_no
  JOIN departments AS d
    ON emp.dept_no = d.dept_no
WHERE t.title = 'Senior Engineer' AND d.dept_name = 'Customer Service'
ORDER BY emp.to_date DESC;
-- get all first and last names of current Sales department employees
SELECT e.first_name, e.last_name, d.dept_name
FROM employees AS e
  JOIN dept_emp AS de
    ON e.emp_no = de.emp_no
  JOIN departments AS d
    ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' AND de.to_date >= CURDATE();
-- get the name of the employee with the highest salary
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, MAX(s.salary)
FROM employees AS e
  JOIN salaries AS s
    ON e.emp_no = s.emp_no
GROUP BY full_name
ORDER BY MAX(s.salary) DESC
LIMIT 1;

-- ================================= RELATIONSHIP BONUSES
-- what is the most common birthday in the company? least common?
-- what is the average salary of managers by department?
-- how many employees currently work in each department?
-- what is the average salary for each department?
-- what was the average salary in the 80s? By department?
-- how many times (on average) do employees switch titles?
-- how many times (on average) do employees get a raise?
-- what is the highest paying job title historically for women and men? For women only? For men only?
-- does the older halve of current employees make more or less than the younger halve?
-- list the oldest current employees by title in each department
-- list the 5 historically lowest paid managers
-- EXTRA HARD BONUS --
-- what employees were hired during the year Nevermind was released and after? (you will need to use the codeup_test_db and employees db)
