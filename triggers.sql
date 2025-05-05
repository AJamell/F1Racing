use F1RacingDB;

DELIMITER //

CREATE TRIGGER LogDriverChanges
AFTER UPDATE ON Drivers
FOR EACH ROW
BEGIN
    INSERT INTO DriverChangesLog (DriverID, ChangeType)
    VALUES (OLD.ID, 'UPDATE');
END //

DELIMITER ;

DELIMITER ;


START TRANSACTION;
INSERT INTO Drivers (POS, Driver, Nationality, Car, PTS, Year, Code)
VALUES (1, 'Random Driver', 'USA', 'Ferrari', 33.000, 2025, 'RDM');
SET @newDriverID = LAST_INSERT_ID();
UPDATE Drivers
SET PTS = 14.000
WHERE ID = @newDriverID;
COMMIT;
SELECT * FROM DriverChangesLog;


