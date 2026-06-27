# Global Logistics Workforce Warehouse & BI Pipeline

A production-ready relational data warehouse and automated Business Intelligence (BI) pipeline designed to audit international workforce operations, analyze shift punctuality variance, and monitor regulatory linguistic compliance within a multinational logistics infrastructure.

This project implements a fully normalized **SQLite** database architecture integrated with a modular Python **ETL (Extract, Transform, Load)** processing layer to generate corporate executive desktop reports.

## 🏗️ Project Architecture & Domain Separation

The application enforces a clean separation of concerns by isolating database schemas, automation logic, and reporting modules into decoupled packages:

```text
WORKFORCE_REPORTING_PIPELINE/
│
├── Database/                  # Database Layer
│   ├── DDL_Schema.sql         # Phase 1: Relational blueprints & schema definitions
│   ├── DML_Seed.sql           # Phase 2: Explicit master data & transactional entries
│   └── DQL_Queries.sql        # Phase 3: Analytical Business Intelligence queries
│
├── Database_Interactions/     # Database Processing Tier
│   ├── Integrity.py           # Handles automated database creation & verification
│   └── Queries.py             # Parses SQL scripts and handles Regex comment scrubbing
│
├── Reporting/                 # Presentation Tier
│   └── Presentation.py        # Maps memory dataframes and handles Excel file exports
│
├── Output_Reports/            # Target folder for generated Excel spreadsheets
├── File_Config.py             # Centralized cross-platform path configurations
├── Main.py                    # Centralized pipeline orchestration entry point
└── README.md                  # System portfolio documentation
```

## 🚀 Key Architectural & Operational Features

* **Advanced Relational Normalization:** Implements a fully normalized database model. To avoid data redundancy and maintain **First Normal Form (1NF)**, employee linguistic skills are decoupled via an explicit **Many-to-Many (M:N)** bridge table (`employee_languages`) utilizing a composite primary key to block duplicate mapping entries.
* **Rigid Data Integrity Controls:** Enforces referential integrity bounds using strict `FOREIGN KEY` constraints, automated sequences (`AUTOINCREMENT`), and defensive deletion properties (`ON DELETE CASCADE` / `ON DELETE SET NULL`) to eliminate orphan record fragments.
* **Semantic Query Alignment & Universal Standards:** Interrogations feature structured multi-table joins (`INNER JOIN`), conditional sorting, and macro-level grouping structures. All queries are fully compliant with universal ANSI SQL standards by explicitly grouping non-aggregated fields to ensure cross-engine portability (SQLite, PostgreSQL, MSSQL).
* **Regex-Driven Query Parsing:** The processing engine features real-time Regular Expression (`re`) scrubbing to strip out trailing documentation annotations and white spaces from the `.sql` streams before compile-time execution.
* **Automated Python ETL Pipeline:** Leverages `pandas` and `sqlite3` resource context managers to securely extract records from the storage layer, map dataframes in memory, and export cleanly formatted spreadsheets without clunky raw sequence metrics.

## 📊 Analytical Business Intelligence Views

The pipeline executes three sophisticated corporate audits:
1. **Workforce Shift Variance & Punctuality Audit:** Compares actual clock-in times against scheduled master shift baselines using Unix epoch delta mathematics to calculate lateness down to the exact minute.
2. **Production Quality & Efficiency Leaderboard:** Evaluates fulfillment floor productivity metrics (`units_processed`) against accuracy metrics, utilizing conditional logic (`CASE WHEN`) to dynamically flag operators who fall below a safe 95% quality threshold.
3. **Cross-Border Language Compliance Audit:** Runs conditional aggregations (`COUNT(CASE WHEN...)`) to monitor departmental risk profiles, checking if HR, Payroll, IT, and Security tiers meet strict multilingual corporate requirements for the German and local markets.

## 🛠️ Getting Started

### Prerequisites
* Python 3.10 or higher installed.
* External data libraries required:
  ```bash
  pip install pandas openpyxl
  ```

### Running the Pipeline
Execute the centralized orchestration script from the root directory of the project:
```bash
python Main.py
```

Upon a clean execution run, the pipeline will automatically evaluate the ecosystem:
1. If missing, it will dynamically build and seed `workforce_warehouse.db` with **60 unique corporate employee records** across 8 distinct departments.
2. It will parse and execute your analytical interogations.
3. It will generate three independent **Microsoft Excel (`.xlsx`) files** inside the `Output_Reports/` folder, completely formatted for corporate review.

---
*Developed by Alex Toma — Technical Operations & Data Specialist*
