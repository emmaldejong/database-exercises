USE codeup_test_db;

SELECT 'ALL ALBUMS IN YOUR TABLE' AS 'INFO';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;

SELECT 'ALL ALBUMS RELEASED BEFORE 1980' AS 'INFO';
SELECT name FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT name FROM albums WHERE release_date < 1980;

SELECT 'ALL ALBUMS BY MICHAEL JACKSON' AS 'INFO';
SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT name FROM albums WHERE artist = 'Peter Jackson';