-- 
-- Drop function if exisit.
-- This function is used to calculate signal and is used with stock xx2 to get signal for each row
-- 
DROP FUNCTION IF EXISTS StockSignal;

DELIMITER //

CREATE FUNCTION StockSignal ( MA20 double(10,2),MA50 double(10,2) )
RETURNS varchar(10) DETERMINISTIC

BEGIN

   DECLARE signal_value varchar(10);

   IF MA20>MA50 THEN
      SET signal_value = 'Buy';

   ELSEIF MA50>MA20 THEN
      SET signal_value = 'Sell';

   ELSEIF MA20>0 and MA50 is null THEN
      SET signal_value = 'Hold';

   ELSE
      SET signal_value = 'Hold';

   END IF;

   RETURN signal_value;

END; //

DELIMITER ;