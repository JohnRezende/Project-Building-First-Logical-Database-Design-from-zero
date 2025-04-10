-- João Victor Alves de Rezende
CREATE DATABASE Mechanics;
USE Mechanics;

-- Criar tabela cliente
CREATE TABLE clients (
    Id_client INT  AUTO_INCREMENT PRIMARY KEY,
    Cname VARCHAR(255),
    Telephone VARCHAR(20)
);

-- Criar tabela veiculo
CREATE TABLE vehicle (
    Id_vehicle INT AUTO_INCREMENT PRIMARY KEY,
    Id_client INT,
    Brand VARCHAR(50),
    Model VARCHAR(50),
    FOREIGN KEY (Id_client) REFERENCES clients(Id_client)
);

-- Criar tabela servico
CREATE TABLE Service(
    Id_service INT AUTO_INCREMENT PRIMARY KEY,
    Sdescription VARCHAR(255),
    Price DECIMAL(10, 2)
);

-- Criar tabela atendimento
CREATE TABLE CostumerService(
    Id_CostumerService INT AUTO_INCREMENT PRIMARY KEY,
    Id_CSvehicle INT,
    Id_CSservice INT,
    CSdata DATE,
    FOREIGN KEY (Id_CSvehicle) REFERENCES vehicle(Id_vehicle),
    FOREIGN KEY (Id_CSservice) REFERENCES Service(Id_service)
);

-- Criar tabela peça
CREATE TABLE Part(
    Id_part INT AUTO_INCREMENT PRIMARY KEY,
    Pdescription VARCHAR(255),
    Part_value DECIMAL(10, 2)
);

-- Criar tabela itemAtendimento
CREATE TABLE ItemCostumerService (
    Id_ItemCS INT AUTO_INCREMENT PRIMARY KEY,
    Id_ItemCostumerService INT,
    Id_PartCS INT,
    Quantity INT,
    FOREIGN KEY (Id_ItemCS) REFERENCES CostumerService(Id_CostumerService),
    FOREIGN KEY (Id_PartCS) REFERENCES Part(Id_part)
);
