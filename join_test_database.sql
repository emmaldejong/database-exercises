USE join_test_db;

# create a roles table with a role name and a PK id
CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

#create a users table with a PK id and a FK that relates to the role id PK
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

# insert 4 roles into the roles table
INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

# insert some users into the users table as values
INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

# check to make sure the table structure is accurate
DESCRIBE roles;
DESCRIBE users;

# check to make sure all the values you added where accurate in the table
SELECT *
FROM users;

SELECT *
FROM roles;

# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
  ('Dwight', 'dwight@dmpaper.com', 2),
  ('Jim', 'jim@dmpaper.com', 2),
  ('Angela', 'angela@dmpaper.com', 2),
  ('Michael', 'michael@dmpaper.com', null);

# join the tables together to create the relationship
SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
  LEFT JOIN roles ON users.role_id = roles.id;

# Use count and the appropriate join type to get a list of roles along with the number of users that has the role
SELECT count(users.name) AS user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;

SELECT count(users.name) AS user_name, roles.name as role_name
FROM users
  LEFT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;