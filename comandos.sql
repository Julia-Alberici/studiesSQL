CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoas (nome, nascimento) VALUES ('Julia', '2001-12-19');
INSERT INTO pessoas (nome, nascimento) VALUES ('Isa', '2002-02-21');
INSERT INTO pessoas (nome, nascimento) VALUES ('Fer', '1977-04-04');
INSERT INTO pessoa (nome, nascimento) VALUES ('Luan', '1992-10-01');
INSERT INTO pessoa (nome, nascimento) VALUES ('Aurora', '2019-05-10');

UPDATE pessoas SET nome= 'Fernanda' WHERE id=3; 

DELETE FROM pessoa WHERE id=4;

SELECT * FROM pessoa ORDER BY nome;