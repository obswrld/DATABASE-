-- CLASS WORK --
-- 2.40 --
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
FROM WAREHOUSE, INVENTORY
WHERE WAREHOUSE.WarehouseID = INVENTORY.WarehouseID
AND (WarehouseCity = "ATLANTA" OR WarehouseCity = "Bango" OR WarehouseCity = "Chicargo warehouse");