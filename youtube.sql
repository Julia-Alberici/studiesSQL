 CREATE TABLE videos (
    id_video INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    author TEXT(30),
    title VARCHAR(30),
    likes INT,
    dislikes INT
    );

INSERT INTO videos (author, title, likes, dislikes) VALUES ('Maria', 'MySQL', 10, 2);
INSERT INTO videos (author, title, likes, dislikes) VALUES ('João', 'HTML', 30, 1);
INSERT INTO videos (author, title, likes, dislikes) VALUES ('Maria', 'CSS', 18, 3);
INSERT INTO videos (author, title, likes, dislikes) VALUES ('Pedro', 'JavaScript', 15, 8);
INSERT INTO videos (author, title, likes, dislikes) VALUES ('Maria', 'Python', 50, 0);

CREATE TABLE author (
    id_author INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    born DATE
    );

ALTER TABLE author ADD phone INT;

INSERT INTO author (name, born, phone) VALUES ('Maria', '1992-04-10', 30225660);
INSERT INTO author (name, born, phone) VALUES ('Pedro', '2000-10-14', 30874414);
INSERT INTO author (name, born, phone) VALUES ('João', '1995-05-20', 35163874);
INSERT INTO author (name, born, phone) VALUES ('Flávia', '1985-08-01', 30145366);

ALTER TABLE videos DROP COLUMN author;
ALTER TABLE videos ADD author INT NOT NULL AFTER id_video;
UPDATE videos SET author=1 WHERE id_video=1;
UPDATE videos SET author=1 WHERE id_video=2;
UPDATE videos SET author=1 WHERE id_video=3;
UPDATE videos SET author=2 WHERE id_video=4;
UPDATE videos SET author=3 WHERE id_video=5;

/*Rename column author from table videos to fk_author and
turn into a foreign key to id_author from table author by phpMyAdmin */

SELECT * FROM videos JOIN author ON videos.fk_author = author.id_author;