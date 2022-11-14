CREATE TABLE customer (
	Customer VARCHAR,
	State VARCHAR,
	CustomerLifetimeValue MONEY,
	Response BOOLEAN,
	Coverage VARCHAR,
	Education VARCHAR,
	EffectiveToDate DATE,
	EmploymentStatus VARCHAR,
	Gender VARCHAR,
	Income MONEY,
	LocationCode VARCHAR,
	MaritalStatus VARCHAR,
	MonthlyPremiumAuto MONEY,
	MonthsSinceLastClaim NUMERIC,
	MonthsSincePolicyInception NUMERIC,
	NumberofOpenComplaints NUMERIC,
	NumberofPolicies NUMERIC,
	PolicyType VARCHAR,
	Policy VARCHAR,
	RenewOfferType VARCHAR,
	SalesChannel VARCHAR,
	TotalClaimAmount MONEY,
	VehicleClass VARCHAR,
	VehicleSize VARCHAR
);

SELECT *
FROM customer;

SELECT COUNT(*) no_of_rows
	, COUNT(customer) AS customers
FROM customer;



--Policy holders in each state by gender 
SELECT  state
	   , gender
	   , COUNT(customer)
FROM customer
GROUP BY state, gender
ORDER BY state;

--Policy holders by coverage  
SELECT  coverage
       , policytype
	   , COUNT(customer)
FROM customer
GROUP BY coverage, policytype
ORDER BY coverage
;

--claim amount by gender and state
SELECT state
	   , gender
	   , SUM(totalclaimamount)
FROM customer
GROUP BY state, gender
ORDER BY state
;

--Month-over-month premium collected
SELECT EXTRACT(MONTH FROM effectivetodate)
	 , SUM(monthlypremiumauto)
FROM customer
GROUP BY 1

--daily premium collected
SELECT *
    , CAST((premium-lag_value)*100/lag_value AS DECIMAL(5, 2)) AS Prcg_change
FROM 
(
	SELECT date
		, premium
		, LAG(premium, 1) OVER (ORDER BY DATE) AS lag_value
	FROM (
		SELECT effectivetodate AS date
			 , SUM(monthlypremiumauto) premium
		FROM customer
		GROUP BY 1) sub1
 	) sub2;
	
WITH lag_premium AS (
	SELECT date
		, premium
		, LAG(premium, 1) OVER (ORDER BY DATE) AS lag_value
	FROM (
		SELECT effectivetodate AS date
			 , SUM(monthlypremiumauto) premium
		FROM customer
		GROUP BY 1) sub
)

SELECT *
    , CAST((premium-lag_value)*100/lag_value AS DECIMAL(5, 2)) AS Prcg_change
FROM lag_premium
;