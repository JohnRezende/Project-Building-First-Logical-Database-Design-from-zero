-- Recupere todos os clientes e seus veículos
SELECT c.Cname as Client_name, concat(v.Model,' ',v.Brand) as Car FROM clients as c
INNER JOIN vehicle as v ON c.Id_client = v.Id_client;

-- Calcule o valor total de cada atendimento, incluindo serviços e peças
SELECT cs.Id_CostumerService, Sdescription,
       SUM(s.Price + (i.Quantity * p.Part_value)) AS Total_Value
FROM CostumerService as cs
LEFT JOIN Service as s ON cs.Id_CostumerService = s.Id_service
LEFT JOIN ItemCostumerService as i ON cs.Id_CostumerService = i.Id_ItemCostumerService
LEFT JOIN Part as p ON i.Id_PartCS = p.Id_part
GROUP BY cs.Id_CostumerService;

-- Recupere os atendimentos ordenados por data
SELECT * FROM CostumerService ORDER BY CSdata DESC;

-- Recupere os serviços mais caros
SELECT * FROM Service ORDER BY Price DESC;

-- Recupere os veículos e os serviços realizados para cada atendimento
SELECT v.Brand, v.Model, s.Sdescription
FROM Vehicle as v
INNER JOIN CostumerService as cs ON v.Id_vehicle = cs.Id_CSvehicle
INNER JOIN Service as s ON cs.Id_CostumerService = s.Id_service;
