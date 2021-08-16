
USE SENAI_HROADS_MANHA_GRUPO16;
GO


-- Selecionar todos os personagens:
SELECT * FROM Personagens


-- Selecionar todos as classes:
SELECT * FROM Classes


-- Selecionar somente o nome das classes:
SELECT Nome FROM Classes;


-- Selecionar todas as habilidades:
SELECT * FROM Habilidades

-- Realizar a contagem de quantas habilidades estão cadastradas:
SELECT COUNT (IdHabilidade) FROM Habilidades


-- Selecionar somente os id’s das habilidades classificando-os por ordem crescente:
SELECT IdHabilidade FROM Habilidades ORDER BY IdHabilidade


-- Selecionar todos os tipos de habilidades:
SELECT * FROM TiposDeHabilidades


-- Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte:
SELECT Habilidades.Nome AS 'Habilidade', TiposDeHabilidades.Nome AS 'Tipo Habilidade' FROM Habilidades
INNER JOIN TiposDeHabilidades
ON Habilidades.IdTipoDeHabilidade = TiposDeHabilidades.IdTipoHabilidade;


-- Selecionar todos os personagens e suas respectivas classes:
SELECT Personagens.Nome AS 'Personagem', Classes.Nome AS 'Nome Classe' FROM Personagens
INNER JOIN Classes
ON Classes.IdClasse = Personagens.IdClasse;


-- Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens):
SELECT Personagens.Nome AS 'Personagem', Classes.Nome AS 'Nome Classe' FROM Personagens
FULL OUTER JOIN Classes
ON Personagens.IdClasse = Classes.IdClasse;


-- Selecionar todas as classes e suas respectivas habilidades:
SELECT Classes.Nome, Habilidades.Nome FROM ClassesHabilidades
LEFT JOIN Classes
ON ClassesHabilidades.IdClasse = Classes.IdClasse
LEFT JOIN Habilidades
ON ClassesHabilidades.IdHabilidade = Habilidades.IdHabilidade;


-- Selecionar todas as habilidades e suas classes (somente as que possuem correspondência):
SELECT Habilidades.Nome as 'Nome da Habilidade', Classes.Nome as 'Nome da Classe' FROM ClassesHabilidades
RIGHT JOIN Classes
ON ClassesHabilidades.IdClasse = Classes.IdClasse
RIGHT JOIN Habilidades
ON ClassesHabilidades.IdHabilidade = Habilidades.IdHabilidade;


-- Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência):
SELECT Habilidades.Nome as 'Nome da Habilidade', Classes.Nome as 'Nome da Classe' FROM ClassesHabilidades
FULL OUTER JOIN Classes
ON ClassesHabilidades.IdClasse = Classes.IdClasse
FULL OUTER JOIN Habilidades
ON ClassesHabilidades.IdHabilidade = Habilidades.IdHabilidade;