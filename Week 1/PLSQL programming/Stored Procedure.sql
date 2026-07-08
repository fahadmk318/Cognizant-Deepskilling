--Scenario 1
CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    AccountType VARCHAR2(20),
    Balance NUMBER(10,2)
);


INSERT INTO Accounts VALUES (101,'Rahul','Savings',10000);
INSERT INTO Accounts VALUES (102,'Aisha','Current',15000);
INSERT INTO Accounts VALUES (103,'John','Savings',20000);
INSERT INTO Accounts VALUES (104,'Priya','Savings',5000);

COMMIT;

SELECT * FROM Accounts;

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
IS
BEGIN
    UPDATE Accounts
    SET Balance = Balance + (Balance * 0.01)
    WHERE AccountType='Savings';

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Monthly Interest Processed Successfully');
END;
/

BEGIN
    ProcessMonthlyInterest;
END;
/

SELECT * FROM Accounts;




--Scenario 2
CREATE TABLE Employees(
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER(10,2)
);

INSERT INTO Employees VALUES(1,'Amit','HR',30000);
INSERT INTO Employees VALUES(2,'Neha','IT',50000);
INSERT INTO Employees VALUES(3,'Rahul','IT',45000);
INSERT INTO Employees VALUES(4,'Sneha','Finance',40000);

COMMIT;


SELECT * FROM Employees;


CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    p_Department IN VARCHAR2,
    p_Bonus IN NUMBER
)
IS
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * p_Bonus /100)
    WHERE Department = p_Department;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Bonus Updated Successfully');
END;
/

BEGIN
    UpdateEmployeeBonus('IT',10);
END;
/

SELECT * FROM Employees;


--scenario 3
CREATE TABLE BankAccounts(
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    Balance NUMBER(10,2)
);

INSERT INTO BankAccounts VALUES(101,'Rahul',50000);
INSERT INTO BankAccounts VALUES(102,'Aisha',30000);

COMMIT;

SELECT * FROM BankAccounts;

