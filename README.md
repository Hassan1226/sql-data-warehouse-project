🏢 Modern Data Warehouse & Analytics Project

Welcome to the Modern Data Warehouse & Analytics Project! This repository contains the complete blueprint and implementation of an end-to-end data engineering and business intelligence solution built using SQL Server.

🧭 Project Overview

This project guides you through the process of building a modern data warehouse solution from the ground up:

Architecture Design: Designing a modern, three-layer data warehouse (Bronze, Silver, and Gold).

ETL Pipelines: Building robust pipelines to ingest raw source files and systematically transform data across layers.

Data Modeling: Structuring fact and dimension tables into an analytical data model ready for BI tools.

Data Analysis: Writing SQL queries to answer strategic business questions and extract actionable metrics.

🛠️ Tools & Links

SQL Server & SSMS: Database engine and management interface (see the step-by-step setup guide in 00_setup).

Git & GitHub: Version control for tracking code, scripts, and documentation.

draw.io: Visual diagramming for architecture layers and data models.

Notion: Project planning templates and step-by-step task tracking.

🚀 Project Requirements

🏗️ 1. Building the Data Warehouse (Data Engineering)

Objective: Develop a modern data warehouse using SQL Server to consolidate multi-source sales data, enabling analytical reporting and informed decision-making.

Specifications:

Data Sources: Ingest raw data from two source systems (ERP and CRM) provided as CSV files.

Data Quality: Identify, clean, and resolve data quality issues prior to downstream analysis.

Integration: Unify both sources into a single, user-friendly data model optimized for analytical queries.

Scope: Focus on the latest dataset only (data historization is not required).

Documentation: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

📊 2. BI: Analytics & Reporting (Data Analysis)

Objective: Develop SQL-based analytics to deliver detailed insights into core business domains.

Key Focus Areas:

Customer Behavior: Purchasing patterns, segmentation, and engagement.

Product Performance: Top-selling items, revenue drivers, and category trends.

Sales Trends: Growth patterns, seasonality, and performance metrics over time.

📁 Repository Structure

.
├── 00_setup/           # Setup guides and database configuration
├── 01_data/            # Source CSV files (ERP & CRM)
├── 02_architecture/    # System architecture and data model diagrams
├── 03_scripts/         # SQL scripts for Bronze, Silver, Gold layers
└── README.md           # Project documentation
