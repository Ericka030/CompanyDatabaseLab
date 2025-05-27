--======================================================
-- Author:		Ericka Joseph
--Create Date:	2025-05-26
--Description:	Adds new employee
--=======================================================
CREATE PROCEDURE AddNewEmployee
    @FirstName VARCHAR(100),
    @LastName VARCHAR(100),
    @Email VARCHAR(100),
    @HireDate DATE,
    @DepartmentID INT,
    @JobTitleID INT,
    @ManagerID INT = NULL,
    @Salary DECIMAL(10, 2)
AS
BEGIN
    SET NOCOUNT ON;

    -- Basic validation: check if department exists
    IF NOT EXISTS (SELECT 1 FROM Departments WHERE DepartmentID = @DepartmentID)
    BEGIN
        RAISERROR('Invalid Department ID', 16, 1);
        RETURN;
    END

    -- Generate a new employeeID
    DECLARE @NewEmployeeID INT;
    SELECT @NewEmployeeID = ISNULL(MAX(EmployeeID), 100) + 1 FROM Employees;

    --Insert into employees
    INSERT INTO Employees(
        EmployeeID, FirstName, LastName, Email,
        DepartmentID, JobTitleID, ManagerID, Salary, HireDate
        )
        VALUES(
        @NewEmployeeID, @FirstName, @LastName, @Email,
        @DepartmentID, @JobTitleID, @ManagerID, @Salary, @HireDate
        );

END;
