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

DELETE FROM pessoas WHERE id=4;

SELECT * FROM pessoas ORDER BY nome;

ALTER TABLE pessoas ADD genero VARCHAR(1) NOT NULL AFTER nascimento;

UPDATE pessoa SET genero='F' WHERE id=1;
UPDATE pessoa SET genero='F' WHERE id=2;
UPDATE pessoa SET genero='F' WHERE id=3;
UPDATE pessoa SET genero='F' WHERE id=5;

SELECT COUNT(id), genero FROM pessoa GROUP BY genero;