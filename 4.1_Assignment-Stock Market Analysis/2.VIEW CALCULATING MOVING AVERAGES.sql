
-- ----------------------------
-- drop views if exisist
-- ----------------------------
DROP VIEW IF EXISTS bajaj1;
DROP VIEW IF EXISTS eicher1;
DROP VIEW IF EXISTS hero1;
DROP VIEW IF EXISTS infosys1;
DROP VIEW IF EXISTS tcs1;
DROP VIEW IF EXISTS tvs1;
-- ----------------------------
-- create views to calculate columns containing the date, close price, 20 Day MA and 50 Day MA for all 6 stocks
-- ----------------------------

-- ----------------------------
-- bajaj1
-- ----------------------------
CREATE VIEW bajaj1 AS 
	SELECT
	DATE_FORMAT(Date,'%d-%M-%Y') as Date,
	`Close_Price` AS `Close_Price`,
IF
	( ( `ronum` <= 19 ), NULL, round( `20 Day MA`, 2 ) ) AS `20 Day MA`,
IF
	( ( `ronum` <= 49 ), NULL, round( `50 Day MA`, 2 ) ) AS `50 Day MA` 
FROM
	(
	SELECT
		`Date` AS `Date`,
		`Close_Price` AS `Close_Price`,
		row_number ( ) OVER ( ) AS `ronum`,
		avg( `Close_Price` ) OVER (ROWS BETWEEN 19 PRECEDING AND CURRENT ROW ) AS `20 Day MA`,
		avg( `Close_Price` ) OVER (ROWS BETWEEN 49 PRECEDING AND CURRENT ROW ) AS `50 Day MA` 
	FROM
		`bajaj` 
	ORDER BY
		`Date` 
	) `sq` 
ORDER BY
	`sq`.`Date`;

-- ----------------------------
-- eicher1
-- ----------------------------
CREATE VIEW eicher1 AS 
	SELECT
	DATE_FORMAT(Date,'%d-%M-%Y') as Date,
	`Close_Price` AS `Close_Price`,
IF
	( ( `ronum` <= 19 ), NULL, round( `20 Day MA`, 2 ) ) AS `20 Day MA`,
IF
	( ( `ronum` <= 49 ), NULL, round( `50 Day MA`, 2 ) ) AS `50 Day MA` 
FROM
	(
	SELECT
		`Date` AS `Date`,
		`Close_Price` AS `Close_Price`,
		row_number ( ) OVER ( ) AS `ronum`,
		avg( `Close_Price` ) OVER ( ROWS BETWEEN 19 PRECEDING AND CURRENT ROW ) AS `20 Day MA`,
		avg( `Close_Price` ) OVER ( ROWS BETWEEN 49 PRECEDING AND CURRENT ROW ) AS `50 Day MA` 
	FROM
		`eicher` 
	ORDER BY
		`Date` 
	) `sq` 
ORDER BY
	`sq`.`Date`;


-- ----------------------------
-- hero1
-- ----------------------------
	CREATE VIEW hero1 AS 
	SELECT
	DATE_FORMAT(Date,'%d-%M-%Y') as Date,
	`Close_Price` AS `Close_Price`,
IF
	( ( `ronum` <= 19 ), NULL, round( `20 Day MA`, 2 ) ) AS `20 Day MA`,
IF
	( ( `ronum` <= 49 ), NULL, round( `50 Day MA`, 2 ) ) AS `50 Day MA` 
FROM
	(
	SELECT
		Date,
		`Close_Price` AS `Close_Price`,
		row_number ( ) OVER ( ) AS `ronum`,
		avg( `Close_Price` ) OVER ( ROWS BETWEEN 19 PRECEDING AND CURRENT ROW ) AS `20 Day MA`,
		avg( `Close_Price` ) OVER ( ROWS BETWEEN 49 PRECEDING AND CURRENT ROW ) AS `50 Day MA` 
	FROM
		`hero` 
	ORDER BY
		`Date` 
	) `sq` 
ORDER BY
`sq`.`Date`;




-- ----------------------------
-- infosys1
-- ----------------------------
CREATE VIEW infosys1 AS 
	SELECT
	DATE_FORMAT(Date,'%d-%M-%Y') as Date,
	`Close_Price` AS `Close_Price`,
IF
	( ( `ronum` <= 19 ), NULL, round( `20 Day MA`, 2 ) ) AS `20 Day MA`,
IF
	( ( `ronum` <= 49 ), NULL, round( `50 Day MA`, 2 ) ) AS `50 Day MA` 
FROM
	(
	SELECT
		`Date` AS `Date`,
		`Close_Price` AS `Close_Price`,
		row_number ( ) OVER ( ) AS `ronum`,
		avg( `Close_Price` ) OVER ( ROWS BETWEEN 19 PRECEDING AND CURRENT ROW ) AS `20 Day MA`,
		avg( `Close_Price` ) OVER ( ROWS BETWEEN 49 PRECEDING AND CURRENT ROW ) AS `50 Day MA` 
	FROM
		`infosys` 
	ORDER BY
		`Date` 
	) `sq` 
ORDER BY
	`sq`.`Date`;


-- ----------------------------
-- tcs1
-- ----------------------------
CREATE VIEW tcs1 AS 
	SELECT
	DATE_FORMAT(Date,'%d-%M-%Y') as Date,
	`Close_Price` AS `Close_Price`,
IF
	( ( `ronum` <= 19 ), NULL, round( `20 Day MA`, 2 ) ) AS `20 Day MA`,
IF
	( ( `ronum` <= 49 ), NULL, round( `50 Day MA`, 2 ) ) AS `50 Day MA` 
FROM
	(
	SELECT
		`Date` AS `Date`,
		`Close_Price` AS `Close_Price`,
		row_number ( ) OVER ( ) AS `ronum`,
		avg( `Close_Price` ) OVER ( ROWS BETWEEN 19 PRECEDING AND CURRENT ROW ) AS `20 Day MA`,
		avg( `Close_Price` ) OVER ( ROWS BETWEEN 49 PRECEDING AND CURRENT ROW ) AS `50 Day MA` 
	FROM
		`tcs` 
	ORDER BY
		`Date` 
	) `sq` 
ORDER BY
	`sq`.`Date`;


-- ----------------------------
-- tvs1
-- ----------------------------
CREATE VIEW tvs1 AS 
	SELECT
	DATE_FORMAT(Date,'%d-%M-%Y') as Date,
	`Close_Price` AS `Close_Price`,
IF
	( ( `ronum` <= 19 ), NULL, round( `20 Day MA`, 2 ) ) AS `20 Day MA`,
IF
	( ( `ronum` <= 49 ), NULL, round( `50 Day MA`, 2 ) ) AS `50 Day MA` 
FROM
	(
	SELECT
		`Date` AS `Date`,
		`Close_Price` AS `Close_Price`,
		row_number ( ) OVER ( ) AS `ronum`,
		avg( `Close_Price` ) OVER (ROWS BETWEEN 19 PRECEDING AND CURRENT ROW ) AS `20 Day MA`,
		avg( `Close_Price` ) OVER (ROWS BETWEEN 49 PRECEDING AND CURRENT ROW ) AS `50 Day MA` 
	FROM
		`tvs` 
	ORDER BY
		`Date` 
	) `sq` 
ORDER BY
	`sq`.`Date`;
