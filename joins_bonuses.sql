USE employees;

-- Write a query to get the average salary current managers make by gender
-- M 79350.60
-- F 75690.00
SELECT e.gender AS Manager_Gender, AVG(s.salary) AS AVG_Salary
FROM employees AS e
  JOIN salaries AS s
    ON e.emp_no = s.emp_no
  JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
WHERE s.to_date >= CURDATE() AND dm.to_date >= CURDATE()
GROUP BY Manager_Gender;

-- Write a query to get the avg salary managers historically make by gender
-- M 72810.94
-- F 62037.21
SELECT e.gender AS Manager_Gender, AVG(s.salary) AS Historical_AVG_Salary
FROM employees AS e
  JOIN salaries AS s
    ON e.emp_no = s.emp_no
  JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
GROUP BY Manager_Gender;

-- get avg salary for all current employees by gender
-- M 72044.66
-- F 71963.57
SELECT e.gender AS Employee_Gender, AVG(s.salary) AS AVG_Salary
FROM employees AS e
  JOIN salaries AS s
    ON e.emp_no = s.emp_no
  JOIN dept_emp AS emp
    ON e.emp_no = emp.emp_no
WHERE emp.to_date >= CURDATE() AND s.to_date >= CURDATE()
GROUP BY Employee_Gender;

-- get avg historic salary for all employees by gender
-- M 63842.25
-- F 63750.17
SELECT e.gender AS Employee_Gender, AVG(s.salary) AS Historical_AVG_Salary
FROM employees AS e
  JOIN salaries AS s
    ON e.emp_no = s.emp_no
  JOIN dept_emp AS emp
    ON e.emp_no = emp.emp_no
GROUP BY Employee_Gender;