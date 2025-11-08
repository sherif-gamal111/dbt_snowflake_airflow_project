dbt Snowflake Airflow Project
A production-ready data pipeline template demonstrating modern data stack best practices with dbt, Snowflake, and Apache Airflow. This project transforms raw data into reliable, analytics-ready datasets with comprehensive data quality checks and orchestration.

🚀 Overview
This project implements a complete ELT pipeline that:

Extracts raw data from source systems

Loads into Snowflake data warehouse

Transforms using dbt with proper staging and mart layers

Orchestrates with Airflow for reliable scheduling and monitoring

Test data quality with automated validation frameworks

🏗️ Architecture
text
Raw Sources → Snowflake → dbt Transformations → Analytics Ready Data
                     ↓
              Airflow Orchestration
Model Layers
Staging: Raw data cleaning and standardization (materialized: view)

Marts: Business-ready datasets and metrics (materialized: table)

📁 Project Structure
text
dbt_snowflake_airflow_project/
├── models/
│   ├── staging/          # Data cleaning & standardization
│   │   ├── stg_customers.sql
│   │   ├── stg_orders.sql
│   │   ├── stg_order_items.sql
│   │   └── stg_products.sql
│   └── marts/           # Business-ready data products
│       └── fct_daily_order_revenue.sql
├── tests/
│   └── snowflake_test.yml  # Data quality tests
├── dbt_project.yml        # Project configuration
├── profiles.yml          # Snowflake connection
└── README.md
🛠️ Core Components
Staging Models
stg_customers: Customer data standardization and cleaning

stg_orders: Order data with status validation and relationships

stg_order_items: Order line items with revenue calculation (quantity * unit_price)

stg_products: Product catalog with categorization

Business Marts
fct_daily_order_revenue: Daily order revenue aggregation for business reporting

Data Quality Framework
Comprehensive testing, including:

Primary Key Validation: Uniqueness and non-null constraints

Referential Integrity: Foreign key relationships between models

Business Logic: Valid status values, email format validation

Data Completeness: Required field validation

⚙️ Configuration
dbt Project (dbt_project.yml)
yaml
- Staging layer: Materialized as views for data freshness
- Marts layer: Materialized as tables for query performance
- Organized model structure for scalability
Data Tests (snowflake_test.yml)
yaml
- Unique and not_null constraints on primary keys
- Relationship tests between related models
- Accepted value validation for business domains
🚀 Getting Started
Prerequisites
Python 3.8+

dbt Core 1.0+

Snowflake account

Apache Airflow 2.0+

Installation
Clone the repository

bash
git clone https://github.com/your-username/dbt_snowflake_airflow_project.git
cd dbt_snowflake_airflow_project
Install dependencies

bash
pip install dbt-snowflake
Configure Snowflake connection

bash
# Update profiles.yml with your Snowflake credentials
Run dbt models

bash
dbt run
dbt test
Deploy Airflow DAGs

bash
# Copy DAG files to your Airflow dags directory
Usage Examples
Run specific model layers:

bash
dbt run --models staging+    # Run staging models
dbt run --models marts+      # Run mart models
dbt test --models staging+   # Test staging models
Generate documentation:

bash
dbt docs generate
dbt docs serve
📊 Data Model
Staging Layer
Cleans raw source data

Standardizes column names and formats

Implements basic data quality checks

Maintains source system granularity

Marts Layer
Implements business logic and metrics

Creates analytics-ready datasets

Supports reporting and dashboarding

Optimized for query performance

🔧 Data Quality & Testing
This project includes 25+ automated data tests:

Uniqueness: Primary key validation

Completeness: Required field validation

Referential Integrity: Cross-model relationship validation

Business Logic: Domain value validation

Data Accuracy: Calculated field validation

Run tests with:

bash
dbt test
🎯 Business Value
Daily Order Revenue: Track and analyze daily sales performance

Customer Analytics: Understand customer behavior and lifetime value

Product Performance: Analyze sales by product and category

Data Reliability: Trusted data foundation for business decisions

Operational Efficiency: Automated pipeline with monitoring

🤝 Contributing
Fork the repository

Create a feature branch (git checkout -b feature/amazing-feature)

Commit your changes (git commit -m 'Add some amazing feature')

Push to the branch (git push origin feature/amazing-feature)

Open a Pull Request

📝 License
This project is licensed under the MIT License - see the LICENSE file for details.

🙏 Acknowledgments
dbt Labs for the amazing transformation framework

Snowflake for the cloud data platform

Apache Airflow for workflow orchestration

The modern data community for best practices and inspiration

☕ Stay Connected
Let's stay in touch! Feel free to connect with me on the following platforms:

LinkedIn Upwork Freelancer Portfolio

🛡️ License
This project is licensed under the MIT License. You are free to use, modify, and share this project with proper attribution.

🌟 About Me
Hi, I’m Sherif, a Data Engineer with a strong foundation in Industrial Engineering and specialized in Data Engineering. I hold a Bachelor of Engineering (BEng) in Industrial Engineering from Canadian International College (CIC) and a Microsoft Data Engineering degree from Digital Egypt Pioneers Initiative (DEPI). I am fascinated by how systems work, how processes can be optimized, and how the right information at the right time can change everything. That curiosity led me to Industrial Engineering, and later, to Data Engineering.

Let's stay in touch! Feel free to connect with me on the following platforms:

LinkedIn Upwork Freelancer Portfolio
