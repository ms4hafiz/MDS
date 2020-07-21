-- 
-- Drop function if exisit
-- This creates function for each stock to get signal for specific date of a stock.
-- 
DROP FUNCTION IF EXISTS SignalBajaj2;
DROP FUNCTION IF EXISTS SignalEicher2;
DROP FUNCTION IF EXISTS SignalHero2;
DROP FUNCTION IF EXISTS SignalInfosys2;
DROP FUNCTION IF EXISTS Signaltcs2;
DROP FUNCTION IF EXISTS Signaltvs2;


-- Signal for bajab2 
delimiter //
CREATE FUNCTION SignalBajaj2( dt char(20))
RETURNS char(10)
DETERMINISTIC
BEGIN
RETURN (SELECT `StockSignal` FROM bajaj2 WHERE `Date` = dt);
END //
delimiter ;

-- Sample date to get the singal for bajaj2
SELECT SignalBajaj2('30-July-2018') AS DaySignal; 

-- Signal for eicher2 
delimiter //
CREATE FUNCTION SignalEicher2( dt char(20))
RETURNS char(10)
DETERMINISTIC
BEGIN
RETURN (SELECT `StockSignal` FROM eicher2 WHERE `Date` = dt);
END //
delimiter ;

-- Sample date to get the singal for eicher2
SELECT SignalEicher2('30-July-2018') AS DaySignal; 

-- Signal for hero2 
delimiter //
CREATE FUNCTION SignalHero2( dt char(20))
RETURNS char(10)
DETERMINISTIC
BEGIN
RETURN (SELECT `StockSignal` FROM hero2 WHERE `Date` = dt);
END //
delimiter ;

-- Sample date to get the singal for hero2
SELECT SignalHero2('30-July-2018') AS DaySignal; 

-- Signal for Infosys 
delimiter //
CREATE FUNCTION SignalInfosys2( dt char(20))
RETURNS char(10)
DETERMINISTIC
BEGIN
RETURN (SELECT `StockSignal` FROM infosys2 WHERE `Date` = dt);
END //
delimiter ;

-- Sample date to get the singal for infosys
SELECT SignalInfosys2('30-July-2018') AS DaySignal; 


-- Signal for tcs 
delimiter //
CREATE FUNCTION Signaltcs2( dt char(20))
RETURNS char(10)
DETERMINISTIC
BEGIN
RETURN (SELECT `StockSignal` FROM tcs2 WHERE `Date` = dt);
END //
delimiter ;

-- Sample date to get the singal for tcs
SELECT Signaltcs2('30-July-2018') AS DaySignal; 


-- Signal for tcs 
delimiter //
CREATE FUNCTION Signaltvs2( dt char(20))
RETURNS char(10)
DETERMINISTIC
BEGIN
RETURN (SELECT `StockSignal` FROM tvs2 WHERE `Date` = dt);
END //
delimiter ;

-- Sample date to get the singal for tvs
SELECT Signaltvs2('30-July-2018') AS DaySignal; 

