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