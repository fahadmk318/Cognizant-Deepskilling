CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Age NUMBER,
    Balance NUMBER(10,2),
    LoanInterestRate NUMBER(5,2),
    IsVIP VARCHAR2(5)
);

INSERT INTO Customers VALUES (101, 'Rahul', 65, 12000, 8.5, 'FALSE');
INSERT INTO Customers VALUES (102, 'Aisha', 45, 8000, 9.0, 'FALSE');
INSERT INTO Customers VALUES (103, 'John', 70, 15000, 7.5, 'FALSE');
INSERT INTO Customers VALUES (104, 'Priya', 30, 5000, 10.0, 'FALSE');

COMMIT;


CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    LoanAmount NUMBER(10,2),
    DueDate DATE,
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);



INSERT INTO Loans VALUES (201, 101, 500000, SYSDATE + 10);
INSERT INTO Loans VALUES (202, 102, 200000, SYSDATE + 40);
INSERT INTO Loans VALUES (203, 103, 300000, SYSDATE + 25);
INSERT INTO Loans VALUES (204, 104, 150000, SYSDATE + 5);

COMMIT;



--Scenario 1
DECLARE
    CURSOR c IS
        SELECT CustomerID, Age
        FROM Customers;
BEGIN
    FOR rec IN c LOOP
        IF rec.Age > 60 THEN
            UPDATE Customers
            SET LoanInterestRate = LoanInterestRate - 1
            WHERE CustomerID = rec.CustomerID;

            DBMS_OUTPUT.PUT_LINE('Discount applied to Customer ID: ' || rec.CustomerID);
        END IF;
    END LOOP;
    COMMIT;
END;
/


--dsiplay table
SELECT CustomerID,
       CustomerName,
       Age,
       LoanInterestRate
FROM Customers;





--scenario 2
DECLARE
    CURSOR c IS
        SELECT CustomerID, Balance
        FROM Customers;
BEGIN
    FOR rec IN c LOOP
        IF rec.Balance > 10000 THEN
            UPDATE Customers
            SET IsVIP = 'TRUE'
            WHERE CustomerID = rec.CustomerID;

            DBMS_OUTPUT.PUT_LINE('VIP status granted to Customer ID: ' || rec.CustomerID);
        END IF;
    END LOOP;
    COMMIT;
END;
/

--display
SELECT CustomerID,
       CustomerName,
       Age,
       Balance,
       LoanInterestRate,
       IsVIP
FROM Customers;





--scenario 3
DECLARE
    CURSOR c IS
        SELECT LoanID, CustomerID, DueDate
        FROM Loans
        WHERE DueDate BETWEEN SYSDATE AND SYSDATE + 30;
BEGIN
    FOR rec IN c LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Customer ID ' || rec.CustomerID ||
            ', Loan ID ' || rec.LoanID ||
            ' is due on ' || TO_CHAR(rec.DueDate,'DD-MON-YYYY')
        );
    END LOOP;
END;
/

--display
SELECT * FROM Customers;
SELECT * FROM Loans;