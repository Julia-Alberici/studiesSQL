CREATE TABLE canais (
    id_canal INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_canal VARCHAR(30) NOT NULL
)

INSERT INTO canais (nome_canal) VALUES ('React');
INSERT INTO canais (nome_canal) VALUES ('PHP');
INSERT INTO canais (nome_canal) VALUES ('CSS');