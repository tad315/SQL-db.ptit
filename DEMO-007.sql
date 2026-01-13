update SALEORDER s
join PAYMENT p on s.OrderID = p.OrderID and p.Status = 'PAID'
set s.status = 'PAID'