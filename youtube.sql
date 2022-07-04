CREATE TABLE canais (
    id_canal INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_canal VARCHAR(30) NOT NULL
)

INSERT INTO canais (nome_canal) VALUES ('React');
INSERT INTO canais (nome_canal) VALUES ('PHP');
INSERT INTO canais (nome_canal) VALUES ('CSS');

CREATE TABLE videos (
	id_video INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_video VARCHAR(100) NOT NULL,
    autor_video VARCHAR(30) NOT NULL
);

INSERT INTO videos (nome_video, autor_video) VALUES ('Login com React', 'React');
INSERT INTO videos (nome_video, autor_video) VALUES ('Components com React', 'React');
INSERT INTO videos (nome_video, autor_video) VALUES ('Listas com PHP', 'PHP');
INSERT INTO videos (nome_video, autor_video) VALUES ('Funções com PHP', 'PHP');
INSERT INTO videos (nome_video, autor_video) VALUES ('Páginas com HTML', 'HTML');