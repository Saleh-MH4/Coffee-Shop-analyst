# Coffee-Shop-analyst
Analyzing coffee shop performance using (excel, SQL, Power bi)


#  Coffee Shop Business Intelligence Portfolio

> Complete data analytics project: SQL → Excel → Power BI


##  Project Overview

End-to-end business intelligence solution analyzing coffee shop sales performance across 20 states, 13 products, and 1,062 transactions for FY 2024.
data sourc: data.world

**Business Impact:**
-  Identified 13.4% revenue overperformance vs budget (+$23,955)
-  Achieved $64,311 profit with 31.7% margin
-  Discovered Colombian coffee drives 42% profit margin
-  California leads all states with $23,032 in revenue

---

##  Tools & Technologies

- **SQL ** - Data extraction, transformation, and aggregation
- **Microsoft Excel** - Financial analysis, variance tracking, KPI dashboards
- **Power BI** - Interactive visualizations and executive reporting

---
---

##  Analysis Workflow



---

### 1. Excel Financial Dashboard

**Components:**
-  Executive KPI cards (Revenue, Profit, Margin, Achievement)
-  Budget vs Actual variance analysis
-  Quarterly performance summary with 2025 forecast
-  Top 5 products and states rankings
-  Key insights 

**Financial Analysis:**
- **Variance Analysis:** +$23,955 favorable revenue variance (13.4%)
- **Profit Achievement:** 100.6% of target
- **Margin Analysis:** 31.7% net margin (above industry average of 10-15%)
- **Trend Forecast:** Projected Q1 2025 growth based on Q4 momentum

**Skills Demonstrated:**
-  Financial modeling with formulas (no hardcoded values)
-  Conditional formatting for performance indicators
-  Variance analysis (favorable/unfavorable)
-  KPI dashboard design
-  Business insight generation

<img width="1550" height="865" alt="excel coffee shop" src="https://github.com/user-attachments/assets/d9aa4376-4d8f-4211-bae5-c4f08966feb0" />

excel file: https://github.com/Saleh-MH4/Coffee-Shop-analyst/blob/main/coffe%20shop%20project(excel).xlsx



### 2. Power BI Interactive Dashboards


---

**Page 1: Product & Sales Analysis**

**Visuals:**
-  Line chart: Total Sales, Profit, and COGS by Month (3 series comparison)
-  Line chart: Target Sales vs COGS vs Target Profit trends
-  Donut chart: Regular (56.5%) vs Decaf (43.5%) split
-  Bar chart: Times sold by Product Type (Espresso, Coffee, Herbal Tea, Tea)
-  Treemap: Revenue by Product (Colombian leads)
-  KPI cards: 1,062 transactions, 13 products, Revenu, Profit

**Key Findings:**
- Sales peaked in Spring and year-end (seasonal trends)
- Regular products outsell Decaf by 13%
- Espresso category most popular (294 sales)
- Colombian coffee is revenue leader

<img width="1442" height="819" alt="Screenshot (85)" src="https://github.com/user-attachments/assets/dc0a758a-1443-4686-a494-bf673a627b6a" />



**Page 2: Geographic & Market Analysis**

**Visuals:**
-  US map showing sales by state (color-coded)
-  State performance table (Sales, Profit, Achievement %, COGS, Avg Transaction)
-  Revenue by Market region (West, Central, East, South)
-  Revenue and Profit by Market Size (Major vs Small)

**Key Findings:**
- West Coast generates highest revenue
- Major markets outperform small markets 2:1
- California, New York, Illinois represent top 3 states

<img width="1413" height="819" alt="Screenshot (86)" src="https://github.com/user-attachments/assets/0325da53-b2ee-4378-b4ab-9ad484c3b6d2" />







### 3. SQL Data Analysis

**Key Queries Performed:**
- Monthly revenue and profit trends
- Product performance analysis (top sellers, profit margins)
- Geographic analysis by state and market
- Budget vs actual variance calculations
- Customer type segmentation (Regular vs Decaf)

**Sample Query:**
```sql
-- Monthly Performance with Target Comparison
SELECT 
    YEAR(Transaction_Date) AS Year,
    MONTH(Transaction_Date) AS Month,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Target_Sales) AS Target_Sales,
    ROUND((SUM(Sales) / SUM(Target_Sales) * 100), 2) AS Achievement_Pct
FROM dbo.coffee_shop_project
GROUP BY YEAR(Transaction_Date), MONTH(Transaction_Date)
ORDER BY Year, Month;
```

**Insights from SQL:**
- Peak sales month: May 2024 ($19,307)
- Top product: Colombian ($30,761 revenue)
- Highest margin product: Darjeeling (39.3%)
- Best state: California ($23,032)

SQL FILE : https://github.com/Saleh-MH4/Coffee-Shop-analyst/blob/main/cfeshop.sql


---

##  Learning Outcomes

Through this project, I demonstrated proficiency in:

**Data Analysis:**
- Complex SQL queries with multiple aggregation levels
- Time-series analysis and trend identification
- Dimensional analysis (geography, products, markets)

**Financial Analysis:**
- Budget vs Actual variance analysis
- KPI development and tracking
- Profitability analysis and margin optimization
- Forecasting using historical trends

**Business Intelligence:**
- Dashboard design following UX best practices
- DAX measure creation for dynamic calculations

---

##  Contact

**[Your Name]**
-  Email: your.email@example.com
-  LinkedIn: [linkedin.com/in/yourprofile](https://linkedin.com/in/yourprofile)


---

## 📄 License

This project is for portfolio and educational purposes. Data is synthetic.

---

⭐ **If you found this project helpful, please star this repository!**

*Last Updated: January 2026*
