-- Create Sales Data Table
CREATE TABLE sales_data (
    [date] DATE,
    product_id VARCHAR(10),
    units_sold INT
);

-- Create Product Information Table
CREATE TABLE product_info (
    product_id VARCHAR(10),
    product_name VARCHAR(100),
    cost_price DECIMAL(10,2),
    order_cost DECIMAL(10,2),
    holding_cost DECIMAL(10,2)
);

-- Create Inventory Table
CREATE TABLE inventory (
    product_id VARCHAR(10),
    current_stock INT,
    lead_time_days INT,
    reorder_point INT,
    safety_stock INT
);

-- Insert Product Info
INSERT INTO product_info VALUES
('A001', 'USB Charger', 8.00, 50.00, 2.00),
('A002', 'Wireless Mouse', 12.00, 40.00, 3.00),
('A003', 'Bluetooth Speaker', 15.00, 60.00, 2.50);


-- Insert Inventory Info
INSERT INTO inventory VALUES
('A001', 120, 7, 60, 20),
('A002', 90, 5, 50, 15),
('A003', 70, 10, 80, 30);


select * from mock_sales_data;

INSERT INTO sales_data ([date], product_id, units_sold)
SELECT [date], product_id, units_sold
FROM mock_sales_data;

select * from sales_data;

DROP TABLE mock_sales_data;



--Get Avg Daily Demand & Std Dev
SELECT 
    product_id,
    COUNT(DISTINCT [date]) AS total_days,
    SUM(units_sold) AS total_units,
    ROUND(AVG(units_sold * 1.0), 2) AS avg_daily_demand,
    ROUND(STDEV(units_sold), 2) AS std_dev_demand
FROM sales_data
GROUP BY product_id;



--Join Product Info for EOQ Calculation
SELECT 
    m.product_id,
    p.product_name,
    COUNT(DISTINCT m.[date]) AS days,
    SUM(m.units_sold) AS total_units,
    ROUND(AVG(m.units_sold), 2) AS avg_daily_demand,
    ROUND(STDEV(m.units_sold), 2) AS std_dev_demand,
    p.order_cost,
    p.holding_cost,
    -- EOQ = SQRT((2 * Demand * Order Cost) / Holding Cost)
    ROUND(SQRT((2 * SUM(m.units_sold) * p.order_cost) / p.holding_cost), 0) AS EOQ
FROM sales_data m
JOIN product_info p ON m.product_id = p.product_id
GROUP BY m.product_id, p.product_name, p.order_cost, p.holding_cost;



--Add Reorder Point & Safety Stock
SELECT 
    m.product_id,
    ROUND(AVG(m.units_sold), 2) AS avg_daily_demand,
    i.lead_time_days,
    ROUND(STDEV(m.units_sold), 2) AS std_dev,
    -- Safety Stock = Z * std_dev * sqrt(Lead Time)
    ROUND(1.65 * STDEV(m.units_sold) * SQRT(i.lead_time_days), 0) AS safety_stock,
    -- ROP = (Avg Daily Demand * Lead Time) + Safety Stock
    ROUND((AVG(m.units_sold) * i.lead_time_days) + 
           (1.65 * STDEV(m.units_sold) * SQRT(i.lead_time_days)), 0) AS reorder_point
FROM sales_data m
JOIN inventory i ON m.product_id = i.product_id
GROUP BY m.product_id, i.lead_time_days;



SELECT name FROM sys.databases;
