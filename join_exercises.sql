USE employees;

# Write a query that shows each department along with the name of the current manager for that department
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Dept_Manager, d.dept_name AS Dept_Name
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON  d.dept_no = dm.dept_no
WHERE dm.to_date >= curdate()
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women
SELECT concat(e.first_name, ' ', e.last_name) AS Dept_Manager, d.dept_name AS Dept_Name
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date >= curdate() AND e.gender = 'F'
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department
-- titles to pull employees --> employees to pull departments

SELECT t.title AS Emp_Title, count(e.emp_no) AS Emp_Count
FROM titles AS t
  JOIN employees AS e
    ON t.emp_no = e.emp_no
  JOIN dept_emp AS d
    ON e.emp_no = d.emp_no
  JOIN departments AS dept
    ON d.dept_no = dept.dept_no
WHERE d.to_date >= curdate() AND t.to_date >= curdate() AND dept.dept_name = 'Customer Service'
GROUP BY Emp_Title;

# Find the current salary of all current managers
-- salaries to pull employees --> employee to pull dept_emp --> dept_emp to pull departments
SELECT dept.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Manager_Name, s.salary AS Current_Salary
FROM employees AS e
  JOIN dept_manager AS dm on dm.emp_no = e.emp_no
  JOIN salaries AS s on s.emp_no = e.emp_no
  JOIN departments AS dept on dept.dept_no = dm.dept_no
WHERE s.to_date >= curdate() AND dm.to_date >= curdate()
ORDER BY Department_Name;


## Find the names of all current employees, their department name, and their current manager's name
-- employee --> dept_emp >>> dept_emp --> departments >>> departments --> dept_manager >>> dept_manager --> employee(manager)
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee_Name, d.dept_name AS Department_Name, CONCAT(e2.first_name, ' ', e2.last_name)
FROM employees AS e
  JOIN dept_emp AS emp
    ON e.emp_no = emp.emp_no
  JOIN departments AS d
    ON emp.dept_no = d.dept_no
  JOIN dept_manager AS dm
    ON d.dept_no = dm.dept_no
  JOIN employees e2
    ON dm.emp_no = e2.emp_no
WHERE emp.to_date >= curdate() AND dm.to_date >= curdate()
ORDER BY Employee_Name
LIMIT 10;