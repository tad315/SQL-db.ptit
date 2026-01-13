update Employee e
join (
  select EmpID from SALEORDER
  where Status = 'COMPLETED'
  group by EmpID
  having sum(TotalAmount) > 50000
) as s on s.EmpID = e.EmpID
set e.Salary = e.Salary * 1.1