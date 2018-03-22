CREATE DATABASE IF NOT EXISTS events_codeup_db;

USE events_codeup_db;

DROP TABLE IF EXISTS attendees;
DROP TABLE IF EXISTS presentations;
DROP TABLE IF EXISTS attendee_presentation;

CREATE TABLE attendees (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(250),
  PRIMARY KEY (id)
);

CREATE TABLE presentations (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(250),
  location VARCHAR(250),
  presentation_time DATETIME,
  PRIMARY KEY (id)
);

CREATE TABLE attendee_presentation (
  attendee_id INTEGER UNSIGNED NOT NULL,
  presentation_id INTEGER UNSIGNED NOT NULL,
  FOREIGN KEY (attendee_id) REFERENCES attendees(id),
  FOREIGN KEY (presentation_id) REFERENCES presentations(id)
);