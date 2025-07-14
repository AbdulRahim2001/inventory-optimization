# Executive Summary Report: Inventory Optimization Project

## Objective
The objective of this project is to enhance inventory planning and forecasting accuracy for Product A001 using historical sales data. The goal is to minimize stockouts and overstock scenarios through data-driven demand forecasting and inventory management models.

## Data Sources
- **sales_data**: Contains 546 rows of daily sales transactions for product A001.
- **product_info**: Basic product metadata.
- **inventory**: Information on existing stock and reorder details.

## Methodology
1. **Data Cleaning and Preparation**
   - Loaded raw sales data and performed cleaning in Power Query.
   - Ensured consistency in date formats, column headers, and missing values.

2. **Descriptive Analysis**
   - Calculated Average Daily Demand and Standard Deviation.
   - Used Excel formulas to compute Reorder Point (ROP) and Safety Stock.

3. **Forecasting**
   - Applied time series forecasting using Excel’s built-in forecast functions.
   - Visualized actual vs. forecasted sales with confidence intervals.

4. **Inventory Optimization Metrics**
   - **Reorder Point (ROP)**: `ROP = Average Daily Demand × Lead Time`
   - **Safety Stock**: `Safety Stock = Z × Standard Deviation × √Lead Time`

5. **Scenario Analysis**
   - Pivoted monthly trends to evaluate seasonal patterns.
   - Created multiple charts and dashboards in Excel for better decision-making.

## Key Findings
- The average daily demand across the dataset was **14.78 units**.
- Forecasting revealed relatively stable demand with minimal spikes.
- Recommended ROP and Safety Stock levels were identified to minimize stockout risks.
- Monthly analysis showed higher demand in March.

## Deliverables
- Cleaned dataset (`sales_data`)
- Forecast visualization chart
- Excel model with ROP and Safety Stock formulas
- Forecast CSV (`product_A001_forecast.csv`)
- Python notebook and SQL queries (for automation and future scaling)
- Structured folder: `/data`, `/Excel_Model`, `/Notebook`, `/SQL`, `/Report`

## Recommendations
- Implement the forecast-based ROP and Safety Stock in the current inventory management system.
- Consider automating this process using Python or Power BI.
- Evaluate monthly to account for seasonality and evolving demand.

---

Prepared by: Abdul Rahim Mulla  
Date: July 13, 2025