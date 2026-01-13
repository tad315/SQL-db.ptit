update Payment pm  
join (
    select o.OrderID from OrderItem o  
    join Product p on o.PID = p.PID 
    group by o.OrderID
    having sum(p.Price * o.Qty) >= 500
) as t on pm.OrderID = t.OrderID
set pm.Status = 'PAID', pm.PaidAt = '2025-01-01'