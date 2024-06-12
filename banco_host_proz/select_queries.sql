USE Host_Proz_Database;

-- 1. Selecionar todos os clientes e seus contatos
SELECT Clientes.Nome AS Cliente, Contatos.Email, Contatos.Tel_Cel
FROM Clientes
INNER JOIN Contatos ON Clientes.Fk_Id_Contato = Contatos.ID;

-- 2. Selecionar todos os clientes e os nomes dos planos que eles possuem
SELECT Clientes.Nome AS Cliente, Planos.Nome AS Plano
FROM Clientes
INNER JOIN Planos ON Clientes.Fk_Id_Plano = Planos.ID;

-- 3. Selecionar todos os planos e listar os serviços associados a cada plano
SELECT Planos.Nome AS Plano, Servicos.Nome AS Servico
FROM Planos
INNER JOIN PlanoServicos ON Planos.ID = PlanoServicos.PlanoID
INNER JOIN Servicos ON PlanoServicos.ServicoID = Servicos.ID;

-- 4. Contar o número de clientes por plano
SELECT Planos.Nome AS Plano, COUNT(Clientes.ID) AS Numero_De_Clientes
FROM Planos
LEFT JOIN Clientes ON Planos.ID = Clientes.Fk_Id_Plano
GROUP BY Planos.Nome;

-- 5. Inserir um novo cliente
INSERT INTO Contatos (Email, Tel_Cel, Mensagens_Enviadas)
VALUES ('novocliente@example.com', '(11) 99999-9999', 'Primeira mensagem');
INSERT INTO Clientes (Nome, Fk_Id_Contato, Fk_Id_Plano)
VALUES ('Novo Cliente', LAST_INSERT_ID(), 1);

-- 6. Atualizar o plano de um cliente
UPDATE Clientes
SET Fk_Id_Plano = 2
WHERE Nome = 'Novo Cliente';

-- 7. Deletar um cliente
DELETE FROM Clientes
WHERE Nome = 'Novo Cliente';

-- 8. Selecionar todas as notícias publicadas em um determinado período
SELECT * FROM Noticias
WHERE Data BETWEEN '2024-01-10' AND '2024-01-20';

-- 9. Selecionar os clientes e as mensagens que eles enviaram
SELECT Clientes.Nome AS Cliente, Contatos.Mensagens_Enviadas
FROM Clientes
INNER JOIN Contatos ON Clientes.Fk_Id_Contato = Contatos.ID;

-- 10. Contar o número total de serviços oferecidos por cada plano
SELECT Planos.Nome AS Plano, COUNT(PlanoServicos.ServicoID) AS Numero_De_Servicos
FROM Planos
LEFT JOIN PlanoServicos ON Planos.ID = PlanoServicos.PlanoID
GROUP BY Planos.Nome;

-- 11. Selecionar os planos que têm mais de dois serviços associados
SELECT Planos.Nome AS Plano, COUNT(PlanoServicos.ServicoID) AS Numero_De_Servicos
FROM Planos
LEFT JOIN PlanoServicos ON Planos.ID = PlanoServicos.PlanoID
GROUP BY Planos.Nome
HAVING COUNT(PlanoServicos.ServicoID) > 2;

-- 12. Selecionar todos os clientes e os serviços associados aos seus planos
SELECT Clientes.Nome AS Cliente, Planos.Nome AS Plano, Servicos.Nome AS Servico
FROM Clientes
INNER JOIN Planos ON Clientes.Fk_Id_Plano = Planos.ID
INNER JOIN PlanoServicos ON Planos.ID = PlanoServicos.PlanoID
INNER JOIN Servicos ON PlanoServicos.ServicoID = Servicos.ID;
