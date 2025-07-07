# Data Engineering Challenge

## Description
This project demonstrates a basic data pipeline that ingests, transforms, and analyzes user event logs from a JSON source. The pipeline is built using Python (pandas) and stores the normalized data in a relational SQLite database.

## Project Structure
- `mock_event_logs.json`: input data with raw event logs
- `data_eng_challenge.ipynb`: the complete ETL pipeline and analytics queries
- `erd.png`: ERD diagram of the final relational data model
- `analytics_queries.sql`: file with SQL-only versions of the analytics queries

## Requirements
- Jupyter Notebook or Google Colab
- Python 3.10+

## How the project works
I used pandas to process data about users, documents, and events. First, I cleaned and transformed the data to ensure accuracy and consistency. Then, I saved everything into a SQLite database, which is lightweight and easy to use without needing extra software setup. The database contains three main tables: users, documents, and events. These tables are linked through primary keys, allowing me to run queries that connect users with documents and their actions.
