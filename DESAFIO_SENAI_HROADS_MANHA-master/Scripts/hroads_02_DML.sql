
USE SENAI_HROADS_MANHA_GRUPO16;
GO

-- Inserir todos os Registros no Banco de Dados:

INSERT INTO Personagens (IdClasse, Nome, MaxVida, MaxMana, DataAtualizacao, DataCriacao)
VALUES (1, 'DeuBug', 100, 80, '10/08/21', '18/01/19'), (4, 'BitBug', 70, 100, '10/08/21', '17/03/16'), (7, 'Fer8', 75, 60, '10/08/21', '18/03/18');

INSERT INTO ClassesHabilidades(IdClasse, IdHabilidade)
VALUES (1,1), (1,2), (2,2), (3,1), (4,3), (4,2), (6,3);

INSERT INTO Classes (Nome)
VALUES ('Barbaro'), ('Cruzado'), ('Ca�adora de Demonios'), ('Monge'), ('Necromante'), ('Feiticeiro'), ('Arcanista');

INSERT INTO Habilidades (IdTipoDeHabilidade, Nome)
VALUES (1, 'Lan�a Mortal'), (4, 'Escudo Supremo'), (3, 'Recuperar Vida');

INSERT INTO TiposDeHabilidades (Nome)
VALUES ('Ataque'), ('Magia'), ('Cura'), ('Defesa');


--Atualizar o Nome do Personagem de "Fer8" para "Fer7"

UPDATE Personagens
SET Nome='Fer7'
WHERE IdPersonagem = 3;


--Atualizar o Nome da Classe de "Necromante" para "Necromancer"

UPDATE Classes
SET Nome='Necromancer'
WHERE IdClasse=5;
