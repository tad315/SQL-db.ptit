-- MySQL 
create procedure GetEmployeeById (
    in employeeId int
)
begin 
    select id, name
    from Employees
    where id = employeeId;
end;
-- SQL Server
CREATE PROCEDURE GetEmployeeById
    @employeeId INT
AS
BEGIN
    SELECT id, name
    FROM Employees
    WHERE id = @employeeId;
END