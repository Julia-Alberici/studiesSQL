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
SELECT videos.title, author.name FROM videos JOIN author ON videos.fk_author = author.id_author;

INSERT INTO videos (fk_author, title, likes, dislikes) VALUES (2, 'PHP', 20, 8);

ALTER TABLE videos ADD fk_seo INT AFTER title;
ALTER TABLE videos ADD CONSTRAINT fk_seo FOREIGN KEY (fk_seo) REFERENCES seo (id_seo);

UPDATE videos SET fk_seo=1;
UPDATE videos SET fk_seo=2 WHERE id_video=1;
UPDATE videos SET fk_seo=2 WHERE id_video=5;
UPDATE videos SET fk_seo=2 WHERE id_video=6;

SELECT videos.title, author.name, seo.category FROM videos 
JOIN author ON videos.fk_author = author.id_author 
JOIN seo ON videos.fk_seo = seo.id_seo;

CREATE TABLE playlist (
    id_playlist INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_playlist VARCHAR(30)
);

INSERT INTO playlist (name_playlist) VALUES ('HTML + CSS');
INSERT INTO playlist (name_playlist) VALUES ('HTML + PHP + JS');
INSERT INTO playlist (name_playlist) VALUES ('Python + PHP');

CREATE TABLE videos_playlist (
id_vd INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
fk_videos INT,
fk_playlist INT,
FOREIGN KEY(fk_videos) REFERENCES videos(id_video),
FOREIGN KEY(fk_playlist) REFERENCES playlist(id_playlist)
);

INSERT INTO videos_playlist (fk_videos, fk_playlist) VALUES (2, 1);
INSERT INTO videos_playlist (fk_videos, fk_playlist) VALUES (3,1);
INSERT INTO videos_playlist (fk_videos, fk_playlist) VALUES (2, 2);
INSERT INTO videos_playlist (fk_videos, fk_playlist) VALUES (6,2);
INSERT INTO videos_playlist (fk_videos, fk_playlist) VALUES (4, 2);
INSERT INTO videos_playlist (fk_videos, fk_playlist) VALUES (5,3);
INSERT INTO videos_playlist (fk_videos, fk_playlist) VALUES (6,3);

SELECT playlist.name_playlist, videos.title, author.name FROM playlist JOIN videos_playlist ON playlist.id_playlist =
    videos_playlist.fk_playlist
    JOIN videos ON videos.id_video= videos_playlist.fk_videos
    JOIN author ON videos.fk_author = author.id_author;

ALTER TABLE playlist ADD fk_author_playlist INT;
ALTER TABLE playlist ADD CONSTRAINT fk_author_playlist FOREIGN KEY (fk_author_playlist) REFERENCES author (id_author);

UPDATE playlist SET fk_author_playlist=4;
UPDATE playlist SET fk_author_playlist=3 WHERE id_playlist=3;

SELECT playlist.name_playlist, author.name FROM playlist JOIN author ON playlist.fk_author_playlist=author.id_author;

SELECT playlist.name_playlist, author.name FROM playlist AS p JOIN author AS a ON p.fk_author_playlist=a.id_author;