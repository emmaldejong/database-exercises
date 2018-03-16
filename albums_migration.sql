USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(120),
    name  VARCHAR(120) NOT NULL,
    release_date INT,
    sales DECIMAL (6, 2),
    genre VARCHAR (100),
    PRIMARY KEY (id)
);