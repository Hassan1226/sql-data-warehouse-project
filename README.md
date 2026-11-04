# 🏢 Modern Data Warehouse & Analytics Project

Welcome to the **Modern Data Warehouse & Analytics Project** repository! This project demonstrates an end-to-end data engineering and business intelligence solution built using **SQL Server**, covering everything from raw data ingestion to analytical reporting.

---

## 🧭 Project Overview

This project is structured around four primary milestones:

1. **Architecture Design:** Implement a modern, three-layer data warehouse structure consisting of **Bronze** (raw landing), **Silver** (cleansed/transformed), and **Gold** (business-ready aggregated) layers.
2. **ETL Pipelines:** Construct pipelines to ingest CSV source files and process data seamlessly across all three warehouse layers.
3. **Data Modeling:** Model cleaned data into a star schema featuring optimized fact and dimension tables tailored for analytical querying.
4. **Data Analysis:** Author SQL scripts to evaluate business performance and extract actionable insights.

---

## 🛠️ Tools & Prerequisites

* **Database System:** SQL Server & SQL Server Management Studio (SSMS) — *See `00_setup/` for environment installation instructions.*
* **Version Control:** Git & GitHub
* **Diagramming & Design:** [draw.io](https://app.diagrams.net/) (used for architectural diagrams and ERDs)
* **Project Tracking:** Notion (Project plan templates and step-by-step task tracking)

---

## 🚀 Project Requirements

### 🏗️ Data Engineering (Data Warehouse Development)

* **Objective:** Establish a consolidated SQL Server data warehouse integrating multiple operational data sources to support enterprise analytics.
* **Specifications:**
  * **Data Sources:** Ingest CSV extracts from two primary source systems: **ERP** and **CRM**.
  * **Data Quality & Cleansing:** Identify and remediate data quality issues, handle missing values, and normalize data types before final loading.
  * **Integration:** Merge CRM and ERP records into a single, unified star schema model tailored for high-performance querying.
  * **Scope:** Focuses exclusively on the **latest snapshot dataset** (historical tracking/SCD is not required for this phase).
  * **Documentation:** Provide detailed architecture diagrams and data dictionaries for business users and technical teams.

---

### 📊 Data Analysis & BI Reporting

* **Objective:** Write optimized SQL analytics queries to extract detailed business metrics and drive data-informed decision-making.
* **Analytical Focus:**
  * 👤 **Customer Behavior:** Purchasing frequency, customer lifetime metrics, and segment analysis.
  * 📦 **Product Performance:** Revenue generation by product line, best/worst performers, and category trends.
  * 📈 **Sales Trends:** Period-over-period sales growth, seasonal trends, and key performance indicators (KPIs).

---

## 📁 Repository Structure

```text
├── 00_setup/           # Setup guides for SQL Server, SSMS, and dependencies
├── 01_datasets/        # Raw source data files (ERP & CRM CSVs)
├── 02_sql_scripts/     # DDL, ETL pipeline scripts, and Gold layer views
├── 03_docs/            # Architecture diagrams, data models, and documentation
└── README.md           # Master documentation file
```
## 🖇️ Links
* Use the below link to see the project tracking in Notion 
* https://app.notion.com/p/DATA-WAREHOUSE-PROJECT-40d5dcceccc3802a82b3cb30bb20760f?source=copy_link
