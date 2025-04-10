-- Criando dados
INSERT INTO clients (Cname, Telephone) VALUES
('Ana Souza', '1199999-1234'),
('Carlos Mendes', '1198888-5678'),
('Juliana Lima', '1197777-9876');

INSERT INTO vehicle (Id_client, Brand, Model) VALUES
(1, 'Toyota', 'Corolla'),
(2, 'Ford', 'Fiesta'),
(3, 'Honda', 'Civic');

INSERT INTO Service (Sdescription, Price) VALUES
('Troca de óleo', 150.00),
('Revisão completa', 500.00),
('Alinhamento e balanceamento', 200.00);

INSERT INTO CostumerService (Id_CSvehicle, Id_CSservice, CSdata) VALUES
(1, 1, '2024-04-01'),
(2, 2, '2024-04-02'),
(3, 3, '2024-04-03');

INSERT INTO Part (Pdescription, Part_value) VALUES
('Filtro de óleo', 30.00),
('Pastilha de freio', 120.00),
('Correia dentada', 200.00);

INSERT INTO ItemCostumerService (Id_ItemCostumerService, Id_PartCS, Quantity) VALUES
(1, 1, 1), -- Atendimento 1, Filtro de óleo
(2, 2, 2), -- Atendimento 2, 2 pastilhas de freio
(3, 3, 1); -- Atendimento 3, 1 correia dentada
