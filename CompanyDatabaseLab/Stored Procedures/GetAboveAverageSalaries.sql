CREATE PROCEDURE GetAboveAverageSalaries
    @DepartmentID INT
AS
BEGIN
    SELECT 
        FirstName, 
        LastName, 
        Salary
    FROM 
        Employees
    WHERE 
        DepartmentID = @DepartmentID
        AND Salary > (
            SELECT AVG(Salary)
            FROM Employees
            WHERE DepartmentID = @DepartmentID
        );
END
