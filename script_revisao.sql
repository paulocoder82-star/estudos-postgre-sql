DROP TABLE IF EXISTS alunos;
CREATE TABLE alunos (
id SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL
); 
ALTER TABLE alunos 
ADD COLUMN email VARCHAR(100) UNIQUE NOT NULL,
ADD COLUMN data_nascimento DATE NOT NULL,
ADD COLUMN telefone VARCHAR(100);

INSERT INTO alunos ( nome, email, data_nascimento)
VALUES ( 'Ana Souza', 'ana@email.com', '2000-06-15');

UPDATE alunos 
set email = 'ana.souza@email.com'
WHERE id = 1;
SELECT * FROM alunos;
INSERT INTO alunos (nome, email, data_nascimento) 
VALUES ('Carlos Silva', 'carlos@email.com', '1998-04-23');
SELECT * FROM alunos;
INSERT INTO alunos (nome, email, data_nascimento) 
VALUES 
  ('João Silva', 'joao.silva@email.com', '2000-01-15'),
  ('Maria Oliveira', 'maria.oliveira@email.com', '1999-05-22'),
  ('Pedro Santos', 'pedro.santos@email.com', '2001-09-10'),
  ('Mariana Costa', 'mariana.costa@email.com', '1998-12-03'),
  ('Lucas Almeida', 'lucas.almeida@email.com', '2002-03-25');
SELECT * FROM alunos;
UPDATE alunos SET telefone = '(85) 99999-1111' WHERE id = 1;
UPDATE alunos SET telefone = '(85) 99999-2222' WHERE id = 2;
UPDATE alunos SET telefone = '(85) 99999-3333' WHERE id = 3;
UPDATE alunos SET telefone = '(85) 99999-4444' WHERE id = 4;
UPDATE alunos SET telefone = '(85) 99999-5555' WHERE id = 5;
UPDATE alunos SET telefone = '(85) 99999-6666' WHERE id = 6;
UPDATE alunos SET telefone = '(85) 99999-7777' WHERE id = 7;
SELECT * FROM alunos;

UPDATE alunos 
SET email = 'carlos.silva@novoemail.com'
WHERE id = 2; 
SELECT * FROM alunos;

DELETE FROM alunos 
WHERE nome = 'Carlos Silva';
SELECT * FROM alunos;

SELECT * FROM alunos 
WHERE nome = 'Carlos Silva';

SELECT * FROM alunos 
WHERE nome LIKE 'Mari%';
SELECT * FROM alunos 
WHERE nome LIKE '%Silva';
SELECT * FROM alunos 
WHERE data_nascimento > '2000-01-01';
SELECT * FROM alunos 
WHERE id = 2 OR id = 5; -- ( este codigo revisou tudo do slide que eu publiquei aqui)
