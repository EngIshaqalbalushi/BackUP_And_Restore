-- Create server-level logins


CREATE LOGIN hr_login WITH PASSWORD = 'StrongPassword1!';
CREATE LOGIN sales_login WITH PASSWORD = 'StrongPassword2!';

-- Use your target database
USE Company_SD;

-- Create database users mapped to the logins
CREATE USER hr_user FOR LOGIN hr_login;
CREATE USER sales_user FOR LOGIN sales_login;




-- Create schemas
CREATE SCHEMA HR AUTHORIZATION hr_user;
CREATE SCHEMA Sales AUTHORIZATION sales_user;





-- HR Schema Tables
CREATE TABLE HR.Employees (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- Sales Schema Tables
CREATE TABLE Sales.Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100),
    ContactInfo NVARCHAR(100)
);


-- Grant access to own schema only
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::HR TO hr_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::Sales TO sales_user;

-- Optional: explicitly deny cross-access
DENY SELECT ON SCHEMA::Sales TO hr_user;
DENY SELECT ON SCHEMA::HR TO sales_user;


