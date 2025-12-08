select s.OrderID, c.CustomerName
from SALEORDER s
join CUSTOMER c on s.CustID = c.CustID
order by OrderID