--Query1
SELECT FlightID,
       PassID,
       FirstName,
       LastName
  FROM ManifestPassenger
       INNER JOIN
       Passenger
 WHERE FlightID = 1544
 ORDER BY LastName;
--Query2
SELECT FlightID,
       PickUpTime,
       SUM(SeatPrice) AS TotalSeatPrice,
       CostPerMile
  FROM FlightReservation
       INNER JOIN
       ManifestPassenger USING (
           FlightID
       )
 WHERE FlightID IN (639, 643, 652, 663) 
 GROUP BY FlightID,
          PickUpTime,
          CostPerMile
 ORDER BY TotalSeatPrice DESC;--Query3
SELECT FirstName,
       LastName,
       FlightID,
       SUM(SeatPrice) AS SeatPrice,
       PickupTime
  FROM Passenger
       INNER JOIN
       ManifestPassenger USING (
           PassID
       )
       INNER JOIN
       FlightReservation USING (
           FlightID
       )
 WHERE PassID = 114
 GROUP BY PickUpTime;
--Query4
SELECT FlightID,
       PickUpTime,
       ActDropOffTime,
       PackageID,
       Length,
       Width,
       Height,
       Weight
  FROM FlightReservation
       INNER JOIN
       ManifestPackage USING (
           FlightID
       )
       INNER JOIN
       Package USING (
           PackageID
       )
 WHERE FlightID = 223;--Query5
SELECT LastName,
       FirstName,
       FlightID
  FROM RemotePilot
       JOIN
       FlightReservation ON ON fr.RemotePilotID = rp.PilotID
 WHERE PickUpTime >= '2023-06-01' AND 
       PickUpTime < '2023-06-08'
 ORDER BY LastName,
          FirstName,
          FlightID;--Query6
SELECT FlightID,
       PickUpTime,
       EstDropOffTime,
       CostPerMile,
       PickUpLat,
       PickUpLong,
       DropOffLat,
       DropOffLong,
       ft.Description AS Type,
       fs.Description AS Status
  FROM FlightReservation
       INNER JOIN
       FlightStatus fs ON fr.StatusID = fr.StatusID
       INNER JOIN
       FlightType ft ON ft.TypeID = ft.TypeID
       INNER JOIN
       RemotePilot rp ON rp.PilotID = rp.PilotID
 WHERE FlightID = 1524;