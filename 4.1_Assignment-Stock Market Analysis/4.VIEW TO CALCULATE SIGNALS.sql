-- 
-- DROP VIEW IF EXIST
-- 

DROP VIEW if EXISTS bajaj2;
DROP VIEW if EXISTS eicher2;
DROP VIEW if EXISTS hero2;
DROP VIEW if EXISTS infosys2;
DROP VIEW if EXISTS tcs2;
DROP VIEW if EXISTS tvs2;

-- 
-- CREATE VIEWS/TABLES 4. Create a User defined function, that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.
-- 

-- 
-- bajaj2
-- 
CREATE VIEW bajaj2 AS
SELECT Date, Close_Price,StockSignal(`20 Day MA`,`50 Day MA`) as StockSignal
from bajaj1;

-- 
-- eicher2
-- 
CREATE VIEW eicher2 AS
SELECT Date, Close_Price,StockSignal(`20 Day MA`,`50 Day MA`) as StockSignal
from eicher1;


-- 
-- hero2
-- 
CREATE VIEW hero2 AS
SELECT Date, Close_Price,StockSignal(`20 Day MA`,`50 Day MA`) as StockSignal
from hero1;

-- 
-- infosys2
-- 
CREATE VIEW infosys2 AS
SELECT Date, Close_Price,StockSignal(`20 Day MA`,`50 Day MA`) as StockSignal
from infosys1;


-- 
-- tcs2
-- 
CREATE VIEW tcs2 AS
SELECT Date, Close_Price,StockSignal(`20 Day MA`,`50 Day MA`) as StockSignal
from tcs1;


-- 
-- tvs2
-- 
CREATE VIEW tvs2 AS
SELECT Date, Close_Price,StockSignal(`20 Day MA`,`50 Day MA`) as StockSignal
from tvs1;