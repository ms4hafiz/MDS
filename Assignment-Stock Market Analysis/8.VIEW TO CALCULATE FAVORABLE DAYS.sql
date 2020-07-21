
-- this query is used to calculate the number of buy, sell and hold days for each stock for analysis purposes
DROP VIEW if EXISTS FavorableDays;
CREATE VIEW FavorableDays as
Select StockName,Buy,Sell,Hold,round(Buy*100/Total) as PercBuy,
round(Sell*100/Total) as PercSell,Total from(
select 'Bajaj' as StockName,
sum(if (StockSignal='Buy',1,0)) as 'Buy',
sum(if (StockSignal='Sell',1,0)) as 'Sell',
sum(if (StockSignal='Hold',1,0)) as 'Hold',
count(StockSignal) as 'Total'
from bajaj2
UNION
select 'Eicher' as StockName,
sum(if (StockSignal='Buy',1,0)) as 'Buy',
sum(if (StockSignal='Sell',1,0)) as 'Sell',
sum(if (StockSignal='Hold',1,0)) as 'Hold',
count(StockSignal) as 'Total'
from eicher2

UNION
select 'Hero' as StockName,
sum(if (StockSignal='Buy',1,0)) as 'Buy',
sum(if (StockSignal='Sell',1,0)) as 'Sell',
sum(if (StockSignal='Hold',1,0)) as 'Hold',
count(StockSignal) as 'Total'
from hero2


UNION
select 'Infosys' as StockName,
sum(if (StockSignal='Buy',1,0)) as 'Buy',
sum(if (StockSignal='Sell',1,0)) as 'Sell',
sum(if (StockSignal='Hold',1,0)) as 'Hold',
count(StockSignal) as 'Total'
from infosys2
UNION
select 'TCS' as StockName,
sum(if (StockSignal='Buy',1,0)) as 'Buy',
sum(if (StockSignal='Sell',1,0)) as 'Sell',
sum(if (StockSignal='Hold',1,0)) as 'Hold',
count(StockSignal) as 'Total'
from tcs2
UNION
select 'TVS' as StockName,
sum(if (StockSignal='Buy',1,0)) as 'Buy',
sum(if (StockSignal='Sell',1,0)) as 'Sell',
sum(if (StockSignal='Hold',1,0)) as 'Hold',
count(StockSignal) as 'Total'
from tvs2) as ttl 
ORDER BY ttl.Buy;
