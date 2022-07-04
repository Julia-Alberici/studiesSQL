CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoas (nome, nascimento) VALUES ('Julia', '2001-12-19')
INSERT INTO pessoas (nome, nascimento) VALUES ('Isa', '2002-02-21')
INSERT INTO pessoas (nome, nascimento) VALUES ('Fer', '1977-04-04')

UPDATE pessoas SET nome= 'Fernanda' WHERE id=3; 