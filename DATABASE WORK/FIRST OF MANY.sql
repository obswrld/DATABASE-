-- 2.17 --
SELECT SKU, SKU_Description 
FROM INVENTORY;

-- 2.18 --
SELECT SKU_Description, SKU 
FROM INVENTORY;

-- 2.19 --
SELECT WarehouseID 
FROM INVENTORY;

-- 2.20 --
SELECT DISTINCT WarehouseID 
FROM INVENTORY;

-- 2.21 --
SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder 
FROM INVENTORY;

-- 2.22 --
SELECT * FROM INVENTORY;

-- 2.23 --
SELECT QuantityOnHand > 0 
FROM INVENTORY;

-- 2.24 --
SELECT SKU, SKU_Description 
FROM INVENTORY 
WHERE QuantityOnHand = 0;

-- 2.25 -- 
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
ORDER BY WarehouseID ASC;

-- 2.26 --
SELECT SKU, SKU_DeScription, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand > 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.27 --
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 AND QuantityOnOrder > 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.28 --
SELECT SKU, SKU_Description, WArehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 OR QuantityOnOrder = 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.29 --
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand > 1 AND QuantityOnHand < 10;

-- 2.30 --
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand BETWEEN 2 AND 9;

-- 2.31 --
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE 'Half-Dome';

-- 2.32 --
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE 'Climb';

-- 2.33 --
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SUBSTRING(SKU_Description, 3, 1) = 'd';

-- 2.34 --
SELECT 
    SUM(QuantityOnHand) AS TotalQuantityOnHand,
    AVG(QuantityOnHand) AS AverageQuantityOnHand,
    MIN(QuantityOnHand) AS MinimumQuantityOnHand,
    MAX(QuantityOnHand) AS MaximumQuantityOnHand,
    COUNT(QuantityOnHand) AS CountOfINVENTORY,
    STDDEV(QuantityOnHand) AS StandardDeviationOfQuantityOnHand
FROM INVENTORY;

-- 2.35 --


-- 2.36 --
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHand
FROM INVENTORY
GROUP BY WarehouseID
ORDER BY TotalItemsOnHand DESC;

-- 2.37 --
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC;

-- 2.38 --
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
HAVING COUNT(SKU) < 2
ORDER BY TotalItemsOnHandLT3 DESC;




