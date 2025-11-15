--Query1
SELECT FirstName,
       LastName,
       COALESCE(COUNT(OrderID), 0) AS NumOrders,
       COALESCE(SUM(ShippedDate), 0) AS TotalSales
  FROM Employee
       LEFT JOIN
       [Order] USING (
           EmployeeID
       )
 GROUP BY FirstName,
          LastName
 ORDER BY TotalSales DESC;
--Query2
SELECT Emp.FirstName AS FirstName,
       Emp.LastName AS LastName,
       Emp.Title AS Title,
       Sup.FirstName AS SupFName,
       Sup.LastName AS SupLName,
       Sup.Title AS SupTitle
  FROM Employee AS Emp
       LEFT JOIN
       Employee AS Sup ON Emp.ReportsTo = Sup.EmployeeID
 ORDER BY Emp.EmployeeID;--Query3
SELECT ProductName,
       COALESCE(COUNT(ProductID), 0) AS TimesOrdered,
       COALESCE(SUM(QuantityPerUnit), 0) AS TotalOrdered
  FROM Product
       LEFT JOIN
       [Order] ON ProductID = ProductID
 GROUP BY ProductName
 ORDER BY TimesOrdered DESC;
;-- Query 4
SELECT Supplier.CompanyName,
       Supplier.City,
       Supplier.Country,
       Employee.LastName,
       Employee.FirstName
  FROM Supplier
       LEFT JOIN
       Employee ON Supplier.City = Employee.City
 ORDER BY Supplier.CompanyName;
