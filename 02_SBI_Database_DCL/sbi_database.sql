-- ==========================================
-- PROJECT: SBI CUSTOMER DATABASE
-- AUTHOR: Alfahad K
-- DATABASE: sbi
-- TOOL: MySQL
-- ==========================================

-- 1. Create database
CREATE DATABASE sbi;

USE sbi;

-- 2. Create customer table
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(30),
    account_balance DECIMAL(12,2)
);

-- 3. Insert customer records
INSERT INTO customer (customer_name, account_balance)
VALUES
('Sam', 45000.00),
('Amal', 56900.93),
('Ajit', 749847.00);

-- 4. Display customer records
SELECT * FROM customer;

-- ==========================================
-- DCL COMMANDS
-- GRANT AND REVOKE
-- ==========================================

-- 5. Create MySQL users
-- Replace placeholder with a secure local password.
CREATE USER 'Fahad'@'localhost'
IDENTIFIED BY 'YOUR_PASSWORD';

CREATE USER 'Yuvaraj'@'localhost'
IDENTIFIED BY 'YOUR_PASSWORD';

-- 6. Grant SELECT permission
GRANT SELECT ON sbi.*
TO 'Fahad'@'localhost';

GRANT SELECT ON sbi.*
TO 'Yuvaraj'@'localhost';

-- 7. Grant multiple permissions
GRANT SELECT, UPDATE, INSERT, DELETE
ON sbi.*
TO 'Fahad'@'localhost';

-- 8. Grant all permissions
GRANT ALL PRIVILEGES
ON sbi.*
TO 'Fahad'@'localhost';

-- 9. Revoke SELECT permission
REVOKE SELECT ON sbi.*
FROM 'Fahad'@'localhost';

-- 10. Check user permissions
SHOW GRANTS FOR 'Fahad'@'localhost';
