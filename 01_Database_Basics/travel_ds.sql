-- ==========================================
-- PROJECT: TRAVEL DATABASE MANAGEMENT
-- AUTHOR: Alfahad K
-- DATABASE: travel_ds
-- TOOL: MySQL
-- ==========================================

-- 1. Create database
CREATE DATABASE travel_ds;

USE travel_ds;

-- 2. Create City table
CREATE TABLE city (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL,
    country VARCHAR(50)
);

-- 3. Create Flight table
CREATE TABLE flight (
    flt_id INT AUTO_INCREMENT PRIMARY KEY,
    flt_fromcity INT,
    flt_tocity INT,
    flt_date DATE,
    FOREIGN KEY (flt_fromcity) REFERENCES city(city_id),
    FOREIGN KEY (flt_tocity) REFERENCES city(city_id)
);

-- 4. Insert city records
INSERT INTO city (city_name, country)
VALUES
('Delhi', 'India'),
('Dubai', 'UAE'),
('Paris', 'France'),
('NewYork', 'USA');

-- 5. Display city records
SELECT * FROM city;

-- 6. Insert flight records
INSERT INTO flight (flt_fromcity, flt_tocity, flt_date)
VALUES
(1, 2, '2026-04-23'),
(2, 3, '2026-04-28'),
(3, 4, '2026-05-05'),
(4, 1, '2026-05-10');

-- 7. Display flight records
SELECT * FROM flight;

-- 8. Create Passenger table
CREATE TABLE passenger (
    passenger_id INT AUTO_INCREMENT PRIMARY KEY,
    passenger_name VARCHAR(30),
    flt_id INT,
    FOREIGN KEY (flt_id) REFERENCES flight(flt_id)
);

-- 9. Insert passenger records
INSERT INTO passenger (passenger_name, flt_id)
VALUES
('Ram', 3),
('Ahad', 4),
('Sam', 2);

-- 10. Display passenger records
SELECT * FROM passenger;

-- 11. Retrieve passengers travelling on flight 3
SELECT passenger_name
FROM passenger
WHERE flt_id = 3;
