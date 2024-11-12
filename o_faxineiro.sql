CREATE TABLE Livros (
    livros_id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(13),
    id_editora INT,
    id_autor INT,
 
 foreign key (id_editora) references Editoras(id_editora),
 foreign key (id_autor) references Autores(id_autor)
);

INSERT INTO Livros (titulo, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 2012, '978-85-8057-346-6'),
('Harry Potter e a Pedra Filosofal', 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 1954, '9788533603149'),
('The Catcher in the Rye', '1951', '9780316769488'),
('1984', 1949, '978-85-221-0616-9'),
('Percy Jackson e o Ladrão de Raios', 2005, '9788598078355'),
('Grande Sertão: Veredas', 1956, '978-85-209-2325-1', 1, 1),
('Memórias Póstumas de Brás Cubas', 1881, '9788535910663', 2, 2),
('Vidas Secas', 1938, '9788572326972', 3, 3),
('O Alienista', 1882, '9788572327429', 2, 4),
('O Cortiço', 1890, '9788579027048', 4, 5),
('Dom Casmurro', 1899, '9788583862093', 2, 5),
('Macunaíma', 1928, '9788503012302', 6, 3);

CREATE TABLE Autores (
	id_autor INT PRIMARY KEY auto_increment,
    nome_autor VARCHAR(255),
    data_nascimento DATE
);

insert into Autores (nome_autor, data_nascimento) values 
("John Green", null),
("J.K. Rowling", null),
("J.R.R. Tolkien", null),
("J.D. Salinger", null),
("George Orwell", null),
("Rick Riordan", null),
("João Guimarães Rosa", null, null),
("Machado de Assis", null, null),
("Graciliano Ramos", null, null),
("Aluísio Azevedo", null, null),
("Mário de Andrade", null, null);

CREATE TABLE Editoras (
	id_editora INT PRIMARY KEY auto_increment,
    nome_editora VARCHAR(255),
    cnpj INT (14),
    telefone INT(11)
);

insert into Editoras (nome_editora, cnpj, telefone) values
("Intrínseca", null, null),
("Rocco", null, null),
("Martins Fontes", null, null),
("Little, Brown and Company", null, null),
("Companhia Editora Nacional", null, null),
("Nova Fronteira", null, null),
("Companhia das Letras", null, null),
("Martin Claret", null, null),
("Penguin Companhia", null, null);