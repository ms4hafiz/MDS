-- STORED FUNCTION/PROCEDURE TO GET SIGNAL FOR ALL STOCKS IN A SPECIFIC DATE

-- DROP PROCEDURE IF EXISTS 

DROP PROCEDURE IF EXISTS SignalForAllStocks;

DELIMITER //

CREATE PROCEDURE SignalForAllStocks(dt char(20))
BEGIN
	SELECT date,stock,StockSignal FROM combined_stocks WHERE Date =dt;
END //

DELIMITER ;

-- Calling stored procedure for date '30-July-2018'
CALL SignalForAllStocks('30-July-2018');