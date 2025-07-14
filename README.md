# 📦 Inventory Optimization Project

This project focuses on optimizing inventory management using **sales data forecasting**, **reorder point analysis**, **economic order quantity (EOQ)**, and **safety stock calculation**. It helps reduce stockouts and overstock situations, enabling data-driven inventory decisions for product A001.

---

## 🔍 Objective

To analyze historical sales data and determine:
- Forecasted future demand
- Economic order quantity (EOQ)
- Reorder point (ROP)
- Required safety stock
- Visual demand patterns with confidence intervals

---

## 📁 Project Structure

```
Inventory_Optimization_Project/
│
├── data/
│   ├── sales_data.csv
│   └── product_A001_forecast.csv
│
├── Excel_Model/
│   └── forecast_model.xlsx           # EOQ, ROP, safety stock formulas + forecast charts
│
├── Notebook/
│   └── Inventory_Optimization_Analysis.ipynb   # (Optional) Python-based analysis
│
├── Report/
│   └── Executive_Summary.pdf        # One-page summary report (optional)
│
├── SQL/
│   └── SQLQuery1.sql                # SQL used to extract and prepare sales data
│
└── README.md
```

---

## 🧰 Tools Used

- Microsoft Excel (Power Query + Forecast Sheet)
- Python (Jupyter Notebook, optional)
- SQL Server Management Studio (SSMS)
- Power BI (Optional for visualization)
- GitHub for version control and portfolio presentation

---

## 📈 Methodology

1. **Data Collection**  
   Pulled raw sales data from SQL Server using SSMS and Power Query.

2. **Data Preparation**  
   Cleaned and shaped in Excel using Power Query.

3. **Forecasting**  
   Used Excel Forecast Sheet to predict future daily demand.

4. **Standard Deviation Calculation**  
   Measured historical sales variation using `=STDEV.S()` in Excel.

5. **Safety Stock Formula**
   ```
   Safety Stock = Z * σ * √Lead Time
   ```

6. **Reorder Point (ROP) Formula**
   ```
   ROP = Average Daily Demand × Lead Time + Safety Stock
   ```

7. **EOQ Formula**
   ```
   EOQ = √((2 × Demand × Ordering Cost) / Holding Cost)
   ```

8. **Visualization**  
   Forecast chart created to visualize demand trends and confidence intervals.

---

## 📌 Key Insights

- Average daily demand for Product A001: ~14.78 units/day
- Recommended Safety Stock: ~24 units
- Reorder Point: ~103 units
- EOQ helps reduce total inventory cost while maintaining availability

---

## 📄 Files Description

| Folder         | Description |
|----------------|-------------|
| `data/`        | Raw and cleaned datasets used in analysis |
| `Excel_Model/` | All calculations and visualization built in Excel |
| `Notebook/`    | Optional Python version of calculations |
| `SQL/`         | SQL queries used to extract raw data |
| `Report/`      | PDF executive summary (if created) |
| `README.md`    | Project overview and documentation |

---

## ✅ How to Run the Project

1. Open the Excel file in `Excel_Model/forecast_model.xlsx`
2. Review Power Query steps and formulas
3. Open the SQL file from `SQL/` if you want to recreate data import
4. (Optional) Run `Inventory_Optimization_Analysis.ipynb` notebook in `Notebook/` using Jupyter

---

## 👨‍💻 Author

**Abdul Rahim Mulla**  
Postgraduate in Data Analytics | Passionate about inventory analytics & operations  
📫 [LinkedIn](https://www.linkedin.com/in/abdulrahimmulla)

---

## 📌 Tags

`Inventory Management` `Excel Forecasting` `Data Analytics` `EOQ` `ROP` `Safety Stock` `SQL` `Power Query`
