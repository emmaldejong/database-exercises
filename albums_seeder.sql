USE codeup_test_db;

truncate albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Fleetwood Mac', 'Rumors', 1977, 27.9, 'Soft Rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
       ('Eagles', 'Their Greatest Hits 1971-1975', 1976, 32.2, 'Rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 28.4, 'R&B'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.5, 'Hard Rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.2, 'Progressive Rock'),
       ('AC/DC', 'Back in Black', 1980, 26.1, 'Hard Rock'),
       ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop'),
       ('John Travolta', 'Grease: The Original Soundtrack', 1978, 14.4, 'Soundtrack'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard Rock'),
       ('Michael Jackson', 'Bad', 1987, 19.3, 'Pop'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.4, 'Alternative Rock'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country'),
       ('Celine Dion', 'Falling Into You', 1996, 20.2, 'Pop'),
       ('The Beatles', 'Sgt. Peppers Lonely Hearts Club', 1967, 13.1, 'Rock'),
       ('Eagles', 'Hotel California', 1976, 21.5, 'Rock'),
       ('John Travolta', 'Dirty Dancing', 1987, 17.9, 'Pop'),
       ('Adele', '21', 2011, 25.3, 'Pop'),
       ('Celine Dion', 'Lets Talk About Love', 1997, 19.3, 'Pop'),
       ('The Beatles', '1', 2000, 22.6, 'Rock'),
       ('Michael Jackson', 'Dangerous', 1991, 16.3, 'Rock'),
       ('Madonna', 'The Immaculate Collection', 1990, 19.4, 'Pop'),
       ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
       ('Bruce Springsteen', 'Born in the U.S.A', 1984, 19.6, 'Rock'),
       ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Soundtrack'),
       ('Metallica', 'Metallica', 1991, 21.2, 'Thrash Metal'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge'),
       ('Pink Floyd', 'The Wall', 1979, 17.6, 'Progressive Rock'),
       ('Santana', 'Supernatural', 1999, 20.5, 'Rock'),
       ('Guns N Roses', 'Appetite for Destruction', 1987, 21.6, 'Hard Rock');