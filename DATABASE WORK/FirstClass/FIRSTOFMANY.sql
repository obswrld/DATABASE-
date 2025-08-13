-- 2.40 --
-- SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, INVENTORY.WarehouseID, WarehouseCity, WarehouseState
-- FROM WAREHOUSE, INVENTORY
-- WHERE WAREHOUSE.WarehouseID = INVENTORY.WarehouseID
-- AND (WarehouseCity = "ATLANTA" OR WarehouseCity = "Bango" OR WarehouseCity = "Chicargo warehouse");

-- 2.41 --
-- SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, INVENTORY.WarehouseID, WarehouseCity, WarehouseState
-- FROM WAREHOUSE, INVENTORY
-- WHERE WarehouseCity IN ("ATLANTA", "BANGO", "CHICARGO WAREHOUSE");

-- 2.42 --
-- SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, INVENTORY.WarehouseID, WarehouseCity, WarehouseState
-- FROM WAREHOUSE, INVENTORY
-- WHERE WAREHOUSE.WarehouseID = INVENTORY.WarehouseID
-- AND NOT (WarehouseCity = "ATLANTA" OR WarehouseCity = "Bango" OR WarehouseCity = "Chicargo warehouse");

-- 2.43 --
-- SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, INVENTORY.WarehouseID, WarehouseCity, WarehouseState
-- FROM WAREHOUSE, INVENTORY
-- WHERE WarehouseCity NOT IN ("ATLANTA", "BANGO", "CHICARGO WAREHOUSE");

-- 2.44 --
-- SELECT CONCAT(SKU_Description , "is Located in" , WarehouseCity)
-- AS ItemLocation
-- FROM WAREHOUSE, INVENTORY;

-- 2.45 -- 
-- SELECT SKU, SKU_Description, WarehouseID
-- FROM INVENTORY
-- WHERE WarehouseID IN (
-- 	SELECT WarehouseID
--     
-- 	FROM Warehouse
--     
--     WHERE Manager = "Lucille Smith"
-- );

-- 2.46 --
-- SELECT SKU, SKU_Description, INVENTORY.WarehouseID
-- FROM INVENTORY, WAREHOUSE
-- WHERE Manager = "Lucille Smith"
-- AND INVENTORY.WarehouseID = WAREHOUSE.WarehouseID;

-- 2.47 --
-- SELECT SKU, SKU_Description, INVENTORY.WarehouseID
-- FROM INVENTORY
-- JOIN WAREHOUSE ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- WHERE Manager = "Lucille Smith";

-- 2.48 --
-- SELECT WarehouseID, AVG(QuantityOnHand) AS AverageQunatityOnHand
-- FROM INVENTORY
-- WHERE WarehouseID IN (
-- 	SELECT warehouseID
--     
--     FROM WAREHOUSE
--     
--     WHERE Manager = "Lucille Smith"
-- )

-- GROUP BY WarehouseID;

-- 2.49 --
-- SELECT INVENTORY.WarehouseID, AVG(QuantityOnHand) AS AverageQuantityOnHand
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.warehouseID = WAREHOUSE.warehouseID
-- AND WAREHOUSE.Manager = "Lucille Smith"
-- GROUP BY INVENTORY.WarehouseID;

-- 2.50 --
SELECT INVENTORY.WarehouseID, AVG(QuantityOnHand) AS AverageQuantityOnHand
FROM INVENTORY
JOIN Warehouse ON INVENTORY.warehouseID = WAREHOUSE.warehouseID
WHERE WAREHOUSE.Manager = "Lucille Smith"
GROUP BY INVENTORY.WarehouseID;


