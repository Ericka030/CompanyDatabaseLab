INSERT INTO Departments VALUES
(1, 'Finance'), (2, 'IT'), (3, 'HR');

--Insert Into Employees
INSERT INTO Employees VALUES
(101, 'Alice', 'Green', 1, 90000, '2020-01-15'),
(102, 'Bob', 'White', 2, 95000, '2019-03-22'),
(103, 'Carol', 'Brown', 1, 65000, '2021-06-01'),
(104, 'Dan', 'Black', 3, 70000, '2022-02-01');

--Insert Into Transactions
INSERT INTO Transactions VALUES
(1, 101, 400.00, 'Expense', '2024-01-01'),
(2, 101, 150.00, 'Reimbursement', '2024-02-01'),
(3, 102, 800.00, 'Expense', '2024-01-15'),
(4, 103, 200.00, 'Expense', '2024-02-20'),
(5, 104, 300.00, 'Reimbursement', '2024-03-01');
