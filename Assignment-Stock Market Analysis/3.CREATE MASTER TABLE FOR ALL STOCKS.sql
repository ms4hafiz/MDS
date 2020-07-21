-- 
-- Create a master table containing the date and close price of all the six stocks. (Column header for the price is the name of the stock)
-- 

DROP VIEW if EXISTS master_all_stocks_close;
create view master_all_stocks_close as 
select DATE_FORMAT(Date,'%d-%b-%Y') as Date,bajaj.Close_Price as Bajaj,
tcs.Close_Price as `TCS`,
tvs.Close_Price as `TVS`,
infosys.Close_Price as `Infosys`,
eicher.`Close_Price` as `Eicher`,
hero.Close_Price as `Hero`
from bajaj 
INNER JOIN eicher USING(Date)
INNER JOIN hero USING(Date)
INNER JOIN infosys USING(Date)
INNER JOIN tcs USING(Date)
INNER JOIN tvs USING(Date) 
ORDER BY bajaj.Date;