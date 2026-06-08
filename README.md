# ECommerce-SQL-Declarative-Analysis

# 📊 E-Commerce Sales Performance & Exploratory Data Analysis (EDA)

## 📌 Project Overview
This project delivers a deep-dive **Exploratory Data Analysis (EDA)** and **SQL-driven analytical breakdown** of an e-commerce transactional dataset containing **1,200 orders** and 14 core business attributes. The primary objective is to apply descriptive statistics, advanced data filtering, and declarative logic to uncover hidden customer behavioral patterns, optimize marketing channels, evaluate payment efficiencies, and flag revenue leakages.

---

## 🛠️ Tech Stack & Methodology
* **Language/Tools:** SQL (MySQL/Structured Queries), Excel (Power Query & Data Modeling).
* **Core Framework:** **Declarative Thinking** — leveraging optimized query execution plans, aggregate processing, and Cost-Based Optimization (CBO) to derive precise numeric facts directly from the relational data layer.

---

## 📈 Executive Key Metrics (Descriptive KPI Summary)
* **Total Transactions Analyzed:** 1,200 Orders
* **Average Order Value (AOV):** \$1,053.97 (Median: \$823.62)
* **Unit Price Range:** From \$11.39 to \$699.93 (Mean: \$356.41)
* **Peak Sales Performance:** **June 2024** achieved the highest revenue spike with a total of **\$68,068.54** in historical sales.
* **Anomaly Detection:** Identified **8 statistical outliers** in `TotalPrice` utilizing the Interquartile Range (IQR) bounding method.

---

## 🔍 Core Analytical Questions & Business Insights

### 1️⃣ Product Performance & Revenue Drivers
**Analytical Query Goal:** Identifying top-selling products by volume (Total Units Sold) and aggregate financial return (Total Revenue) to streamline inventory.

```sql
SELECT     Product,     
           SUM(Quantity) AS TotalUnitsSold,     
           SUM(TotalPrice) AS TotalRevenue
FROM Orders
GROUP BY Product
ORDER BY TotalRevenue DESC;
