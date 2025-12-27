INSERT INTO VipCustomer (CustID, CustomerName, City, TotalSpent2024)
SELECT c.CustID, c.CustomerName, c.City, SUM(s.TotalAmount) as TotalSpent2024
FROM Customer c  
JOIN SaleOrder s on s.CustID = c.CustID
where YEAR(s.OrderDate) = 2024
GROUP BY c.CustID, c.CustomerName, c.City
HAVING SUM(s.TotalAmount) >= 2000;