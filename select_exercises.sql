USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'Info';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Peppers Lonely Hearts Club Band was released' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club';

SELECT 'The genre of Nevermind' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS 'Info';
SELECT name FROM albums WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock"' AS 'Info';
SELECT name FROM albums WHERE genre = 'Rock';