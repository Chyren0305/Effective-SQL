SELECT ST.SalesID, C.CustFirstName, C.CustLastName, C.Address, C.City, C.Phone, 
       ST.PurchaseDate, M.ModelYear, M.Model, E.SalesPerson
  FROM SalesTransactions ST, Employees E, Customers C, AutomobileModels M
 WHERE C.CustomerID = ST.CustomerID
   AND M.ModelID = ST.ModelID
   AND E.EmployeeID = ST.SalesPersonID;