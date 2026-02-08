# 📊 Amazon Order Fulfilment Operations – Data Analytics Project

## 📌 Overview
This project analyzes Amazon order fulfilment data using an end-to-end data analytics workflow.  
The goal is to clean raw data, validate data quality, perform exploratory analysis, and prepare business-ready insights.

---

## 🎯 Objectives
- Clean and preprocess raw Amazon order data
- Validate data quality using Python
- Perform exploratory data analysis (EDA)
- Analyze data using SQL
- Prepare data for visualization using Power BI

---

## 🛠 Tools & Technologies
- Python (Pandas, Matplotlib)
- SQL
- Power BI
- Jupyter Notebook

---

## 📁 Project Structure
Amazon_Order_Fulfilment_Operations
│
├── Raw_Data
├── Working_Files
├── Final_Output
├── Python_Work
├── SQL_Work
├── PowerBI
├── Documentation
└── Reports

---

---

### 📂 Raw_Data
Contains the **original, unmodified dataset** received from the data source.  
This data is never edited directly to preserve data integrity.

**Purpose:**
- Acts as the single source of truth
- Used as input for Python data cleaning

---

### 📂 Working_Files
Stores **intermediate and cleaned datasets** generated during Python processing.

**Includes:**
- Cleaned CSV files
- Validation reports (e.g., missing values summary)

**Purpose:**
- Used for validation, analysis, and transformation
- Acts as a bridge between raw data and final output

---

### 📂 Final_Output
Contains the **final, validated dataset** ready for reporting and dashboards.

**Purpose:**
- Used for SQL analysis
- Imported into Power BI
- Shared with stakeholders

---

### 📂 Python_Work
Houses all **Python Jupyter Notebooks** used in the project.

**Includes:**
- Data loading and cleaning scripts
- Data validation checks
- Exploratory Data Analysis (EDA)
- Final data export logic

Each notebook performs a **single, well-defined task** to ensure modularity and reproducibility.

---

### 📂 SQL_Work
Contains **SQL scripts** used for structured data analysis.

**Includes:**
- Table creation scripts
- Data validation queries
- Sales and fulfilment analysis queries

**Purpose:**
- Cross-validation of Python results
- Business-level querying and insights

---

### 📂 PowerBI
Stores **Power BI files and assets**.

**Purpose:**
- Create interactive dashboards
- Visualize sales trends and fulfilment performance
- Enable data-driven decision making

*(Large `.pbix` files may be excluded from GitHub due to size limits.)*

---

### 📂 Documentation
Contains **project documentation and written explanations**.

**Includes:**
- Project report
- Technical documentation
- Methodology explanations

**Purpose:**
- Helps reviewers understand project logic
- Useful for interviews and presentations

---

### 📂 Reports
Stores **final reports and summaries** generated from the analysis.

**Includes:**
- Executive summaries
- Insight reports
- Exported charts or PDFs

**Purpose:**
- Business-facing deliverables
- Stakeholder communication

---

## ✅ Why This Structure Matters
- Separates raw, processed, and final data
- Improves reproducibility and clarity
- Follows industry-standard analytics practices
- Makes the project easy to review and maintain
