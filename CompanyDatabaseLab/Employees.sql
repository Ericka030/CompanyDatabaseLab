CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	DepartmentID INT,
	Salary DECIMAL(10, 2),
	HireDate DATE,
	Email VARCHAR(100),
	JobTitleID INT,
	ManagerID INT NULL,
	FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID)
	);