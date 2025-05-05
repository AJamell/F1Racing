
USE F1RacingDB;

DELIMITER $$
CREATE PROCEDURE GetTeamPoints
(
    IN seasonYear int,
    IN teamName VARCHAR(60)
)
BEGIN
    SELECT Team, PTS
    FROM Teams T
    WHERE Year = seasonYear
    AND Team = teamName;
END $$

DELIMITER ;

CALL GetTeamPoints(1966,"Ferrari");