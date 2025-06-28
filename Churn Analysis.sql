SELECT Gender, COUNT(Gender) as TotalCount,
COUNT(Gender) * 100.0 / (SELECT COUNT(*) from stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Gender

SELECT Contract, COUNT(Contract) as TotalCount,
COUNT(Contract) * 100.0 / (SELECT COUNT(*) from stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Contract

SELECT Customer_Status, COUNT(Customer_Status) as TotalCount,
SUM(Total_Revenue) as TotalRev,
SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM stg_Churn) * 100 as RevPercentage
FROM stg_Churn
GROUP BY Customer_Status

SELECT State, COUNT(State) as TotalCount,
COUNT(State) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) as percentage
FROM stg_Churn
GROUP BY State
ORDER BY percentage DESC

SELECT DISTINCT Internet_Type
FROM stg_Churn

SELECT Payment_Method, COUNT(Payment_Method) as TotalCounts,
	SUM(Total_Revenue) as TotalRev,
	SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM stg_Churn) * 100 as RevPercentage
FROM stg_Churn
GROUP BY Payment_Method
ORDER BY TotalRev DESC