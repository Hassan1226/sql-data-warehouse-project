# Data Warehouse Naming Conventions

## Overview
This document outlines the standard naming conventions used for schemas, tables, views, columns, stored procedures, and other database objects within the data warehouse architecture.

---

## Table of Contents
- [1. General Principles](#1-general-principles)
- [2. Table Naming Conventions](#2-table-naming-conventions)
  - [Bronze Layer Rules](#bronze-layer-rules)
  - [Silver Layer Rules](#silver-layer-rules)
  - [Gold Layer Rules](#gold-layer-rules)
  - [Glossary of Category Patterns](#glossary-of-category-patterns)
- [3. Column Naming Conventions](#3-column-naming-conventions)
  - [Surrogate Keys](#surrogate-keys)
  - [Technical Columns](#technical-columns)
- [4. Stored Procedures](#4-stored-procedures)

---

## 1. General Principles

* **Casing & Style:** Use `snake_case` (lowercase letters separated by underscores `_`) for all object names.
* **Language:** Standardize on English for all database identifiers.
* **Reserved Words:** Avoid using SQL reserved keywords (e.g., `SELECT`, `DATE`, `USER`, `ORDER`) as object names.

---

## 2. Table Naming Conventions

### Bronze Layer Rules
All table names in the Bronze layer must begin with the source system identifier and preserve the original table name without renaming.

* **Format:** `<sourcesystem>_<entity>`
  * `<sourcesystem>`: Name of the source system (e.g., `crm`, `erp`).
  * `<entity>`: Exact table or entity name as defined in the source system.
* **Example:** `crm_customer_info` → Raw customer information ingested from the CRM system.

---

### Silver Layer Rules
Table names in the Silver layer retain the source system prefix and original entity name to ensure traceability back to the Bronze layer.

* **Format:** `<sourcesystem>_<entity>`
  * `<sourcesystem>`: Name of the source system (e.g., `crm`, `erp`).
  * `<entity>`: Cleaned and standardized table name matching the source entity.
* **Example:** `crm_customer_info` → Cleansed customer data originating from the CRM system.

---

### Gold Layer Rules
Tables in the Gold layer must use business-aligned, domain-specific names prefixed with an operational category identifier.

* **Format:** `<category>_<entity>`
  * `<category>`: Specifies the table's analytical role (e.g., `dim`, `fact`, `report`).
  * `<entity>`: Descriptive entity name representing the business domain (e.g., `customers`, `products`, `sales`).
* **Examples:**
  * `dim_customers` → Dimension table containing customer master data.
  * `fact_sales` → Fact table containing transactional sales events.

#### Glossary of Category Patterns

| Pattern | Meaning | Example(s) |
| :--- | :--- | :--- |
| `dim_` | Dimension table | `dim_customers`, `dim_products` |
| `fact_` | Fact table | `fact_sales` |
| `report_` | Aggregated report or view | `report_customers`, `report_sales_monthly` |

---

## 3. Column Naming Conventions

### Surrogate Keys
All primary keys created for dimension tables in the Gold layer must use the `_key` suffix.

* **Format:** `<table_name>_key`
  * `<table_name>`: Singular or plural entity reference associated with the key.
  * `_key`: Standard suffix designating a surrogate key.
* **Example:** `customer_key` → Primary surrogate key in the `dim_customers` table.

---

### Technical Columns
System-generated metadata columns used for auditing and data lineage must start with the `dwh_` prefix.

* **Format:** `dwh_<column_name>`
  * `dwh_`: Prefix exclusively reserved for warehouse metadata.
  * `<column_name>`: Descriptive attribute name indicating the column's purpose.
* **Example:** `dwh_create_date` → Timestamp tracking when the record was inserted into the warehouse.

---

## 4. Stored Procedures

Stored procedures responsible for executing ETL/ELT pipelines must adhere to a standardized layer-based naming structure.

* **Format:** `load_<layer>`
  * `<layer>`: Target architectural schema being populated (`bronze`, `silver`, or `gold`).
* **Examples:**
  * `load_bronze` → Stored procedure responsible for ingesting data into the Bronze layer.
  * `load_silver` → Stored procedure responsible for transforming and loading data into the Silver layer.
  * `load_gold` → Stored procedure responsible for loading dimensional models into the Gold layer.