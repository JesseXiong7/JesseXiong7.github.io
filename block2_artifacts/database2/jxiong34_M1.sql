-- Query 1
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `flightreservationdist_new` AS
    SELECT 
        `flightreservation`.`FlightID` AS `FlightID`,
        `flightreservation`.`PickUpTime` AS `PickUpTime`,
        `flightreservation`.`EstDropOffTime` AS `EstDropOffTime`,
        `flightreservation`.`ActDropOffTime` AS `ActDropOffTime`,
        `flightreservation`.`CostPerMile` AS `CostPerMile`,
        `flightreservation`.`PickUpLat` AS `PickUpLat`,
        `flightreservation`.`PickUpLong` AS `PickUpLong`,
        `flightreservation`.`DropOffLat` AS `DropOffLat`,
        `flightreservation`.`DropOffLong` AS `DropOffLong`,
        LATLONGDISTANCE(`flightreservation`.`PickUpLat`,
                `flightreservation`.`PickUpLong`,
                `flightreservation`.`DropOffLat`,
                `flightreservation`.`DropOffLong`) AS `Distance`,
        `flightreservation`.`RemotePilotID` AS `RemotePilotID`,
        `flightreservation`.`TypeID` AS `TypeID`,
        `flightreservation`.`StatusID` AS `StatusID`,
        `flightreservation`.`DroneID` AS `DroneID`
    FROM
        `flightreservation`

-- Query 2
SELECT 
    DroneID, 
    SUM(Distance) AS TotalDistance
FROM 
    FlightReservationDist
GROUP BY 
    DroneID
ORDER BY 
    TotalDistance DESC;

-- Query 3
SELECT 
    FlightID,
    PickUpTime,
    CostPerMile,
    Distance,
    (CostPerMile * Distance) AS TotalMilageCost
FROM
    FlightReservationDist
WHERE
    FlightID IN (SELECT DISTINCT
            fr.FlightID
        FROM
            FlightReservation fr
                JOIN
            PassGroupMember pgm ON fr.FlightID = pgm.PassID
                JOIN
            PassGroup pg ON pgm.GroupID = pg.GroupID
                JOIN
            PassGroupType pgt ON pg.GroupTypeID = pgt.GroupTypeID
        WHERE
            pgt.Description = 'Family')
ORDER BY Distance;

-- Query 4
SELECT 
    FlightID,
    PickUpTime,
    EstDropOffTime,
    ActDropOffTime,
    CostPerMile,
    PickUpLat,
    PickUpLong,
    DropOffLat,
    DropOffLong,
    RemotePilotID,
    TypeID,
    StatusID,
    DroneID
FROM
    FlightReservation
WHERE
    DroneID = 1
        AND PickUpTime BETWEEN '2021-01-01' AND '2021-12-31' 
UNION SELECT 
    FlightID,
    PickUpTime,
    EstDropOffTime,
    ActDropOffTime,
    CostPerMile,
    PickUpLat,
    PickUpLong,
    DropOffLat,
    DropOffLong,
    RemotePilotID,
    TypeID,
    StatusID,
    DroneID
FROM
    FlightReservation
WHERE
    DroneID = 10
        AND PickUpTime BETWEEN '2022-10-01' AND '2022-12-31'
ORDER BY DroneID , PickUpTime;
    
-- Query 5
SELECT 
    p.PassID,
    p.FirstName,
    p.LastName,
    COUNT(mp.FlightID) AS NumFlights
FROM
    Passenger p
        JOIN
    ManifestPassenger mp ON p.PassID = mp.PassID
GROUP BY p.PassID , p.FirstName , p.LastName
ORDER BY NumFlights DESC;
    
-- Query 6
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `passgroupaffiliates` AS
    SELECT 
        `p`.`PassID` AS `PassID`,
        `p`.`FirstName` AS `FirstName`,
        `p`.`LastName` AS `LastName`,
        `pg`.`GroupID` AS `GroupID`,
        `pg`.`Nickname` AS `Nickname`,
        `pg`.`OwnerID` AS `OwnerID`,
        `pg`.`GroupTypeID` AS `GroupTypeID`
    FROM
        ((`passenger` `p`
        LEFT JOIN `passgroupmember` `pgm` ON ((`p`.`PassID` = `pgm`.`PassID`)))
        LEFT JOIN `passgroup` `pg` ON ((`pgm`.`GroupID` = `pg`.`GroupID`)))
        
-- Query 7
SELECT
    YEAR(PickUpTime) AS Year,
    COUNT(*) AS NumFlights,
    ROUND(AVG(TIMESTAMPDIFF(MINUTE, PickUpTime, ActDropOffTime)), 2) AS AvgDuration
FROM 
    Flightreservation
WHERE 
    ActDropOffTime IS NOT NULL
GROUP BY 
    YEAR(PickUpTime)
ORDER BY 
    Year;
    