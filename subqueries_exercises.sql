USE employees;

# 1. Find all the employees with the same hire date as employee 101010 using a sub-query. (69 Rows)

# 2. Find all the titles held by all employees with the first name Aamod. (314 total titles, 6 unique titles)

# 3. Find all the current department managers that are female.
-- +------------+------------+
-- | first_name | last_name  |
-- +------------+------------+
-- | Isamu      | Legleitner |
-- | Karsten    | Sigstam    |
-- | Leon       | DasSarma   |
-- | Hilary     | Kambil     |
-- +------------+------------+

# Bonus
# 1. Find all the department names that currently have female managers.
-- +-----------------+
-- | dept_name       |
-- +-----------------+
-- | Development     |
-- | Finance         |
-- | Human Resources |
-- | Research        |
-- +-----------------+

# 2. Find the first and last name of the employee with the highest salary.
-- +------------+-----------+
-- | first_name | last_name |
-- +------------+-----------+
-- | Tokuyasu   | Pesch     |
-- +------------+-----------+
