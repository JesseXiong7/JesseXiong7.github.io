--Query1
SELECT FirstName,
       LastName,
       FlightID,
       SeatPrice,
       JonAvgSeatPrice.AvgSeatPrice
  FROM ManifestPassenger
       INNER JOIN
       Passenger ON ManifestPassenger.PassID = Passenger.PassID
       INNER JOIN
       (
           SELECT PassID,
                  AVG(SeatPrice) AS AvgSeatPrice
             FROM ManifestPassenger
            WHERE PassID = 12
            GROUP BY PassID
       )
       AS JonAvgSeatPrice ON ManifestPassenger.PassID = JonAvgSeatPrice.PassID
 WHERE ManifestPassenger.PassID = 12
 ORDER BY FlightID;--Query2
SELECT *
FROM FlightReservation
WHERE DroneID = 1
AND strftime('%Y', PickUpTime) = '2022'

UNION

-- Query2 for Drone #10
SELECT *
FROM FlightReservation
WHERE DroneID = 10
AND PickUpTime >= '2022-10-01' AND PickUpTime < '2023-01-01'
ORDER BY DroneID, PickUpTime;
--Query3
SELECT DroneID,
       ROUND(AVG(SeatPrice / CostPerMile), 3) AS AvgCostPerMile
  FROM FlightReservation
       INNER JOIN
       ManifestPassenger USING (
           FlightID
       )
       INNER JOIN
       FlightStatus USING (
           StatusID
       )
 WHERE DroneID IN (
           SELECT DroneID
             FROM Model
            WHERE brand = 'Yuneec'
       )
AND 
       StatusID = 'Completed'
 GROUP BY DroneID
 ORDER BY AvgCostPerMile;
--Query4
SELECT
  FlightID,
  PickUpTime,
  CostPerMile
FROM
  FlightReservation
WHERE
  FlightID IN (
    SELECT
      FlightID
    FROM
      FlightReservation
    WHERE
      Month(PickUpTime) = 2
      AND Year(PickUpTime) = 2023
  )
ORDER BY
  FlightID;--Query5SELECT
  strftime('%Y', PickUpTime) AS Year,
  COUNT(*) AS NumFlights,
  ROUND(AVG(ActDropOffTime - PickUpTime) / 60) AS AvgDuration
FROM
  FlightReservation
GROUP BY
  Year
ORDER BY
  Year;
  --Query6
  SELECT
    FlightType.TypeID,
    CASE
        WHEN FlightType.TypeID = 1 THEN 'Passenger'
        WHEN FlightType.TypeID = 2 THEN 'Package'
        WHEN FlightType.TypeID = 3 THEN 'Passenger and Package'
    END AS FlightType,
    COUNT(*) AS NumFlights
FROM
    FlightType
INNER JOIN FlightReservation USING (TypeID)
WHERE
    PickUpTime >= '2023-04-20'AND PickUpTime <= '2023-04-25'
GROUP BY
    TypeID
ORDER BY
    TypeID; 
    --Query 7
SELECT
    PassGroupType.GroupTypeID,
    Description,
    COUNT(PassGroupMember.GroupID) AS NumGroups,
    SUM(PassID) AS NumPassengers
FROM
    PassGroupType
INNER JOIN PassGroup ON PassGroup.GroupTypeID = PassGroupType.GroupTypeID
INNER JOIN PassGroupMember ON PassGroup.GroupID = PassGroupMember.GroupID
GROUP BY
    PassGroupType.GroupTypeID
ORDER BY
    PassGroupType.GroupTypeID; 
