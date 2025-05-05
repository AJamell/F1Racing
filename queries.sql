use F1RacingDB;

describe Drivers;
describe Teams;
describe FastestLaps;
describe Winners;
select count(id) from Drivers;
select count(id) from Teams;
select count(id) from FastestLaps;
select count(id) from Winners;

-- Who are the top 5 drivers with the highest total points in a 1950?
SELECT Driver, SUM(PTS) AS TotalPoints
FROM Drivers
WHERE Year = 1950
GROUP BY Driver
ORDER BY TotalPoints DESC
LIMIT 5;

-- Which team scored the most points in 2001?
SELECT Team, SUM(PTS) AS TotalPoints
FROM Teams
WHERE Year = 2001
GROUP BY Team
ORDER BY TotalPoints DESC
LIMIT 1;

-- Find the driver who won the most races in 2005;
SELECT WinnerCode, COUNT(*) AS RaceWins
FROM Winners
WHERE YEAR(Str_to_date(date,'%m/%d/%y')) = 2005
GROUP BY WinnerCode
ORDER BY RaceWins DESC
LIMIT 1;

-- Find all drivers who participated in races for a ferrari
SELECT DISTINCT Driver as Drivers
FROM Drivers
WHERE Car = 'Ferrari' AND Year = 1966;

-- Find the team with the best average perfomance (average points per race)
SELECT Team, AVG(PTS) AS AvgPoints
FROM Teams
WHERE Year = 2003
GROUP BY Team
ORDER BY AvgPoints DESC
LIMIT 1;

-- find the lists of races won by each driver (display car and lap time too)
SELECT W.GrandPrix, W.Date, W.WinnerCode, W.Car, W.Laps, W.Time
FROM Winners W
JOIN Drivers D ON W.WinnerCode = D.Code
WHERE YEAR(STR_TO_DATE(W.Date, '%m/%d/%y')) = 2002;

-- get the driver who won the most races and their total points.SELECT Driver, PTS
SELECT Driver, PTS
FROM Drivers
WHERE Code = (
    SELECT WinnerCode
    FROM Winners
    WHERE YEAR(STR_TO_DATE(Date, '%m/%d/%y')) = 2016
    GROUP BY WinnerCode
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
AND Year = 2016;

-- get all the races where Lewis Hamilton won (with Grand Prix, Date, and Car details)
SELECT W.GrandPrix, W.Date, W.Car, W.Laps, W.Time
FROM Winners W
WHERE W.WinnerCode = 'HAM';








