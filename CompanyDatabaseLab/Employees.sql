CREATE TABLE Employees(
	EmployeeID INT PRIMARY key,
	FirstName VARCHAR(50),
	lastName VARCHAR(50),
	DepartmentID INT,
	Salary DECIMAL(10, 2),
	HireDate DATE,
	FOREIGN KEY(departmentID) REFERENCES Departments(DepartmentID)
	);