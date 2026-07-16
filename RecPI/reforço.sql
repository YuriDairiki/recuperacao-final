CREATE DATABASE livrariaRecuperacao20262;

USE livrariaRecuperacao20262;

CREATE TABLE autor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE genero (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE livro (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(50),
    fkAutor INT,
    fkGenero INT,
    precoCompra DECIMAL(7,2),
    precoVenda DECIMAL (7,2),
    CONSTRAINT FK_autor FOREIGN KEY (fkAutor) REFERENCES autor(id),
    CONSTRAINT FK_genero FOREIGN KEY (fkGenero) REFERENCES genero(id)
);
