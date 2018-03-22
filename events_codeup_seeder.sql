USE events_codeup_db;

INSERT INTO attendees (name)
  VALUES
    ('Alan'),
    ('Grace'),
    ('Ada'),
    ('Bjarne');

INSERT INTO presentations (name, location, presentation_time)
  VALUES
    ('Test-Driven Development 101', 'Conference Room A', '2018-12-05 09:00:00'),
    ('Intro to Management: Proactively Synergizing Paradigm Shifts', 'Conference Room B', '2018-12-05 09:00:00'),
    ('Java Design Patterns: Factory factories', 'Conference Room A', '2018-12-05 10:30:00'),
    ('Development Methodologies: What the SCRUM?', 'Conference Room A	', '2018-12-05 10:30:00');

INSERT INTO attendee_presentation (attendee_id, presentation_id)
  VALUES
    (1,1), (1, 3), (2, 2), (2, 4), (3, 2), (3, 3), (4, 4);

SELECT * FROM attendees;
SELECT * FROM presentations;
SELECT * FROM attendee_presentation;

SELECT a.name, p.name
FROM attendees AS a
  JOIN attendee_presentation AS ap 
    ON a.id = ap.attendee_id
  JOIN presentations AS p
    ON ap.presentation_id = p.id
WHERE a.name = 'Grace';