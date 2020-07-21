
-- 
-- This view combines all stocks after calculation of row wise signal calcuation by (StockSignal) in to a single view using union clause. This is then used with UDF GetSignal to find the signal for a single date.
-- 
DROP VIEW if EXISTS combined_stocks;
CREATE VIEW combined_stocks as
select Date, Close_Price, StockSignal,'bajaj' as Stock from bajaj2
union all
select Date, Close_Price, StockSignal,'eicher' as Stock from eicher2
union all
select Date, Close_Price, StockSignal,'hero' as Stock from hero2
union all
select Date, Close_Price, StockSignal,'infosys' as Stock from infosys2
union all
select Date, Close_Price, StockSignal,'TCS' as Stock from tcs2
union all
select Date, Close_Price, StockSignal,'TVS' as Stock from tvs2;