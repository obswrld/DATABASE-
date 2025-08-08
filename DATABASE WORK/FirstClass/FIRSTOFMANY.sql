-- 2.40 --
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, INVENTORY.WarehouseID, WarehouseCity, WarehouseState
FROM WAREHOUSE, INVENTORY
WHERE WAREHOUSE.WarehouseID = INVENTORY.WarehouseID
AND (WarehouseCity = "ATLANTA" OR WarehouseCity = "Bango" OR WarehouseCity = "Chicargo warehouse");

-- 2.41 --
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, INVENTORY.WarehouseID, WarehouseCity, WarehouseState
FROM WAREHOUSE, INVENTORY
WHERE WarehouseCity IN ("ATLANTA", "BANGO", "CHICARGO WAREHOUSE");

-- 2.42 --
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, INVENTORY.WarehouseID, WarehouseCity, WarehouseState
FROM WAREHOUSE, INVENTORY
WHERE WAREHOUSE.WarehouseID = INVENTORY.WarehouseID
AND NOT (WarehouseCity = "ATLANTA" OR WarehouseCity = "Bango" OR WarehouseCity = "Chicargo warehouse");

-- 2.43 --
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, INVENTORY.WarehouseID, WarehouseCity, WarehouseState
FROM WAREHOUSE, INVENTORY
WHERE WarehouseCity NOT IN ("ATLANTA", "BANGO", "CHICARGO WAREHOUSE");

-- 2.44 --
SELECT CONCAT(SKU_Description , "is Located in" , WarehouseCity)
AS ItemLocation
FROM WAREHOUSE, INVENTORY;

-- 2.45 -- 
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE WarehouseID IN (
	SELECT WarehouseID
    
	FROM Warehouse
    
    WHERE Manager = "Lucille Smith"
);



