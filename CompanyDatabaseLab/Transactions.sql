CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    EmployeeID INT,
    Amount DECIMAL(10,2),
    Type VARCHAR(20), -- 'Expense' or 'Reimbursement'
    TransactionDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
