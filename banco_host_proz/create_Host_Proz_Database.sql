-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS Host_Proz_Database;
USE Host_Proz_Database;

-- Criação da tabela de noticias
CREATE TABLE Noticias (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Data DATE,
    Hora TIME,
    Conteudo TEXT
);

-- Criação da tabela de contatos
CREATE TABLE Contatos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(255),
    Tel_Cel VARCHAR(20),
    Mensagens_Enviadas TEXT
);

-- Criação da tabela de planos
CREATE TABLE Planos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Valor DECIMAL(10, 2)
);

-- Criação da tabela de serviços
CREATE TABLE Servicos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255)
);

-- Criação da tabela de junção PlanoServicos
CREATE TABLE PlanoServicos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    PlanoID INT,
    ServicoID INT,
    FOREIGN KEY (PlanoID) REFERENCES Planos(ID),
    FOREIGN KEY (ServicoID) REFERENCES Servicos(ID)
);

-- Criação da tabela de clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Fk_Id_Contato INT,
    Fk_Id_Plano INT,
    FOREIGN KEY (Fk_Id_Contato) REFERENCES Contatos(ID),
    FOREIGN KEY (Fk_Id_Plano) REFERENCES Planos(ID)
);
