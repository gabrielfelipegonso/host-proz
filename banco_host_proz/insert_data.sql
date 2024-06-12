USE minha_empresa;

-- Inserir dados na tabela Planos
INSERT INTO Planos (ID, Nome, Valor) VALUES
(1, 'Plano Básico', 29.90),
(2, 'Plano Intermediário', 49.90),
(3, 'Plano Avançado', 79.90),
(4, 'Plano Profissional', 129.90);

-- Inserir dados na tabela Servicos
INSERT INTO Servicos (ID, Nome) VALUES
(1, 'Hospedagem Compartilhada'),
(2, 'Hospedagem VPS'),
(3, 'Hospedagem Dedicada'),
(4, 'Hospedagem Cloud'),
(5, 'Certificado SSL'),
(6, 'Backup Diário'),
(7, 'Suporte 24/7'),
(8, 'Migração Gratuita'),
(9, 'Emails Ilimitados'),
(10, 'Domínios Adicionais');

-- Inserir dados na tabela PlanoServicos (relações muitos-para-muitos)
INSERT INTO PlanoServicos (PlanoID, ServicoID) VALUES
(1, 1), (1, 5), (1, 9),
(2, 2), (2, 6), (2, 10),
(3, 3), (3, 7),
(4, 4), (4, 8);

-- Inserir dados na tabela Contatos
INSERT INTO Contatos (ID, Email, Tel_Cel, Mensagens_Enviadas) VALUES
(1, 'cliente1@example.com', '(11) 91234-5678', 'Mensagem 1'),
(2, 'cliente2@example.com', '(21) 92345-6789', 'Mensagem 2'),
(3, 'cliente3@example.com', '(31) 93456-7890', 'Mensagem 3'),
(4, 'cliente4@example.com', '(41) 94567-8901', 'Mensagem 4'),
(5, 'cliente5@example.com', '(51) 95678-9012', 'Mensagem 5'),
(6, 'cliente6@example.com', '(61) 96789-0123', 'Mensagem 6'),
(7, 'cliente7@example.com', '(71) 97890-1234', 'Mensagem 7'),
(8, 'cliente8@example.com', '(81) 98901-2345', 'Mensagem 8'),
(9, 'cliente9@example.com', '(91) 99012-3456', 'Mensagem 9'),
(10, 'cliente10@example.com', '(11) 90123-4567', 'Mensagem 10'),
(11, 'cliente11@example.com', '(21) 91234-5678', 'Mensagem 11'),
(12, 'cliente12@example.com', '(31) 92345-6789', 'Mensagem 12'),
(13, 'cliente13@example.com', '(41) 93456-7890', 'Mensagem 13'),
(14, 'cliente14@example.com', '(51) 94567-8901', 'Mensagem 14'),
(15, 'cliente15@example.com', '(61) 95678-9012', 'Mensagem 15'),
(16, 'cliente16@example.com', '(71) 96789-0123', 'Mensagem 16'),
(17, 'cliente17@example.com', '(81) 97890-1234', 'Mensagem 17'),
(18, 'cliente18@example.com', '(91) 98901-2345', 'Mensagem 18'),
(19, 'cliente19@example.com', '(11) 99012-3456', 'Mensagem 19'),
(20, 'cliente20@example.com', '(21) 90123-4567', 'Mensagem 20'),
(21, 'cliente21@example.com', '(31) 91234-5678', 'Mensagem 21'),
(22, 'cliente22@example.com', '(41) 92345-6789', 'Mensagem 22'),
(23, 'cliente23@example.com', '(51) 93456-7890', 'Mensagem 23'),
(24, 'cliente24@example.com', '(61) 94567-8901', 'Mensagem 24'),
(25, 'cliente25@example.com', '(71) 95678-9012', 'Mensagem 25'),
(26, 'cliente26@example.com', '(81) 96789-0123', 'Mensagem 26'),
(27, 'cliente27@example.com', '(91) 97890-1234', 'Mensagem 27'),
(28, 'cliente28@example.com', '(11) 98901-2345', 'Mensagem 28'),
(29, 'cliente29@example.com', '(21) 99012-3456', 'Mensagem 29'),
(30, 'cliente30@example.com', '(31) 90123-4567', 'Mensagem 30');

-- Inserir dados na tabela Clientes
INSERT INTO Clientes (ID, Nome, Fk_Id_Contato, Fk_Id_Plano) VALUES
(1, 'João Silva', 1, 1),
(2, 'Maria Oliveira', 2, 2),
(3, 'Carlos Santos', 3, 3),
(4, 'Ana Pereira', 4, 4),
(5, 'Paulo Souza', 5, 1),
(6, 'Fernanda Lima', 6, 2),
(7, 'Lucas Almeida', 7, 3),
(8, 'Juliana Costa', 8, 4),
(9, 'Roberto Ferreira', 9, 1),
(10, 'Patrícia Rodrigues', 10, 2),
(11, 'Marcos Gomes', 11, 3),
(12, 'Sandra Barros', 12, 4),
(13, 'Ricardo Ribeiro', 13, 1),
(14, 'Cláudia Duarte', 14, 2),
(15, 'Gustavo Melo', 15, 3),
(16, 'Larissa Rocha', 16, 4),
(17, 'Rafael Carvalho', 17, 1),
(18, 'Vanessa Martins', 18, 2),
(19, 'André Nascimento', 19, 3),
(20, 'Renata Teixeira', 20, 4),
(21, 'Fábio Mendes', 21, 1),
(22, 'Marina Moreira', 22, 2),
(23, 'Bruno Araújo', 23, 3),
(24, 'Helena Batista', 24, 4),
(25, 'Daniel Campos', 25, 1),
(26, 'Gabriela Neves', 26, 2),
(27, 'Pedro Borges', 27, 3),
(28, 'Mariana Farias', 28, 4),
(29, 'Thiago Vieira', 29, 1),
(30, 'Aline Souza', 30, 2);

-- Inserir dados na tabela Noticias
INSERT INTO Noticias (ID, Data, Hora, Conteudo) VALUES
(1, '2024-01-01', '10:00:00', 'Lançamento de novos planos de hospedagem em 2024.'),
(2, '2024-01-02', '11:00:00', 'Promoção de ano novo para novos clientes.'),
(3, '2024-01-03', '12:00:00', 'Novos recursos adicionados aos planos existentes.'),
(4, '2024-01-04', '13:00:00', 'Atualização de segurança para todos os servidores.'),
(5, '2024-01-05', '14:00:00', 'Parceria com empresa de segurança cibernética.'),
(6, '2024-01-06', '15:00:00', 'Migração gratuita para novos clientes.'),
(7, '2024-01-07', '16:00:00', 'Suporte 24/7 agora disponível em todos os planos.'),
(8, '2024-01-08', '17:00:00', 'Certificado SSL gratuito para todos os clientes.'),
(9, '2024-01-09', '18:00:00', 'Novos data centers em São Paulo e Rio de Janeiro.'),
(10, '2024-01-10', '19:00:00', 'Melhoria na infraestrutura de rede.'),
(11, '2024-01-11', '10:00:00', 'Descontos especiais para clientes antigos.'),
(12, '2024-01-12', '11:00:00', 'Programa de fidelidade lançado.'),
(13, '2024-01-13', '12:00:00', 'Novo painel de controle disponível.'),
(14, '2024-01-14', '13:00:00', 'Webinar gratuito sobre segurança na web.'),
(15, '2024-01-15', '14:00:00', 'Expansão da equipe de suporte técnico.'),
(16, '2024-01-16', '15:00:00', 'Atualização de política de privacidade.'),
(17, '2024-01-17', '16:00:00', 'Relatório anual de desempenho de servidores.'),
(18, '2024-01-18', '17:00:00', 'Nova ferramenta de backup disponível.'),
(19, '2024-01-19', '18:00:00', 'Recursos adicionais para planos avançados.'),
(20, '2024-01-20', '19:00:00', 'Certificado ISO/IEC 27001 conquistado.'),
(21, '2024-01-21', '10:00:00', 'Suporte a novas linguagens de programação.'),
(22, '2024-01-22', '11:00:00', 'Expansão dos serviços de hospedagem cloud.'),
(23, '2024-01-23', '12:00:00', 'Tutoriais online gratuitos para novos clientes.'),
(24, '2024-01-24', '13:00:00', 'Integração com serviços de terceiros aprimorada.'),
(25, '2024-01-25', '14:00:00', 'Serviços de consultoria de TI disponíveis.'),
(26, '2024-01-26', '15:00:00', 'Plano de recuperação de desastres atualizado.'),
(27, '2024-01-27', '16:00:00', 'Nova política de atendimento ao cliente.'),
(28, '2024-01-28', '17:00:00', 'Redução de preços em planos intermediários.'),
(29, '2024-01-29', '18:00:00', 'Melhoria na proteção contra DDoS.'),
(30, '2024-01-30', '19:00:00', 'Expansão da infraestrutura global.');
