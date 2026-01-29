--Yearly_performance

CREATE VIEW  Yearly_performance AS
SELECT 
	YEAR(Transaction_Date) As Year, 
	MONTH(Transaction_Date) As Month,
	DATETRUNC(Month , Transaction_Date) AS Year_Month_Day,
	COUNT(transaction_id) AS Transaction_counts,
	SUM(sales) Total_Sales,
	SUM(profit) AS Total_profit,
	SUM(cogs) as Cogs, 
	SUM(total_expenses) AS Total_Expenses    
	FROM dbo.coffee_shop_project
	GROUP BY YEAR(Transaction_Date),
	MONTH(Transaction_Date),
	DATETRUNC(Month, Transaction_Date);

	--CREATE VIEW  Yearly_target_performance AS
	SELECT 
	YEAR(Transaction_Date) As Year, 
	MONTH(Transaction_Date) As Month,
	DATETRUNC(Month , Transaction_Date) AS Year_Month_Day,
	SUM(target_sales) Total_Sales,
	SUM(Target_profit) AS Total_profit,
	SUM(Target_cogs) as Cogs,
	AVG(difference_between_actual_and_target_profit)As profit_varience
	FROM dbo.coffee_shop_project
	GROUP BY YEAR(Transaction_Date),
	MONTH(Transaction_Date),
	DATETRUNC(Month, Transaction_Date);


	--State_performance

	CREATE VIEW  State_performance AS
	SELECT 
	state,
	SUM(sales) Total_Sales,
	SUM(profit) AS Total_profit,
	SUM(cogs) as Cogs, 
	SUM(total_expenses) AS Total_Expenses,
	ROUND((SUM(Sales) / SUM(Target_Sales) * 100), 2) AS Sales_Achievement_Pct,
	ROUND(SUM(Sales) / COUNT(*), 2) AS Avg_Transaction_Value

    
	FROM dbo.coffee_shop_project
	GROUP BY 
	state;

	--Markets_performance

	CREATE VIEW  Markets_performance AS
	SELECT 
	Market,
	SUM(sales) Total_Sales,
	COUNT(*) AS Transactions,
	SUM(profit) AS Total_profit,
	SUM(cogs) as Cogs, 
	SUM(total_expenses) AS Total_Expenses    
	FROM dbo.coffee_shop_project
	GROUP BY 
	Market;

--Market_size_performance

	CREATE VIEW  Market_size_performance AS
		SELECT 
	Market_Size,
	SUM(sales) Total_Sales,
	COUNT(*) AS Transactions,
	SUM(profit) AS Total_profit,
	SUM(cogs) as Cogs, 
	SUM(total_expenses) AS Total_Expenses    
	FROM dbo.coffee_shop_project
	GROUP BY 
	Market_Size;

	--product_type_performance

	CREATE VIEW  product_type_performance AS
		SELECT 
	Product_Type,
	SUM(sales) Total_Sales,
	COUNT(*) AS Transactions,
	SUM(profit) AS Total_profit,
	SUM(cogs) as Cogs, 
	SUM(total_expenses) AS Total_Expenses    
	FROM dbo.coffee_shop_project
	GROUP BY 
	Product_Type;


	--product_performance

	CREATE VIEW  product_performance AS
	SELECT 
	Product,
	SUM(sales) Total_Sales,
    COUNT(*) AS Transactions,
	SUM(profit) AS Total_profit,
	SUM(cogs) as Cogs, 
	SUM(total_expenses) AS Total_Expenses    
	FROM dbo.coffee_shop_project
	GROUP BY 
	Product;

	-- Channel performance (In-Store vs Online)
	CREATE VIEW  Type_performance AS
SELECT 
    Type,
    
   
    COUNT(*) AS Transactions,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM coffee_shop_project)), 2) AS Pct_of_Total_Transactions,
    

    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
  
 
    ROUND(SUM(Sales) / COUNT(*), 2) AS Avg_Transaction_Value
    
FROM coffee_shop_project
GROUP BY Type
ORDER BY Total_Sales DESC;




-- Overall business performance

SELECT 
    COUNT(DISTINCT Transaction_ID) AS Total_Transactions,
    COUNT(DISTINCT Product) AS Number_of_Products,
    
    -- Financial Summary
    SUM(Sales) AS Total_Revenue,
    SUM(COGS) AS Total_COGS,
    SUM(Profit) AS Total_Profit,
    SUM(Total_Expenses) AS Total_Expenses,
    
    -- Averages
    ROUND(AVG(Sales), 2) AS Avg_Transaction_Value,

    
    -- Target Performance
    SUM(Target_Sales) AS Total_Target_Sales,
    SUM(Target_Profit) AS Total_Target_Profit,
    SUM(Difference_between_Actual_and_Target_Profit) AS Total_Profit_Variance,
    
    -- Achievement Percentages
    ROUND((SUM(Sales) / SUM(Target_Sales) * 100), 2) AS Sales_Achievement_Pct,
    ROUND((SUM(Profit) / SUM(Target_Profit) * 100), 2) AS Profit_Achievement_Pct
FROM coffee_shop_project