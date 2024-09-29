# Data Analysis Project: E-commerce Insights

## Overview
This project focuses on analyzing e-commerce data from various CSV files, transferring them to a SQL database using Python, and extracting meaningful insights related to geography, seller performance, payment types, order habits, and customer behavior. The aim is to visualize and interpret data to identify trends and patterns that can help improve business strategies.

## Table of Contents
- Project Structure
- Data Sources
- Methodology
- Key Insights
- Visualizations

## Project Structure
- **data/**: Contains all CSV datasets.
- **notebooks/**: Contains Jupyter notebook for analysis.
- **scripts/**: Contains Python scripts for data transfer and analysis.
- **visualizations/**: Contains all generated visualizations.
- **README.md**: This documentation file.

## Data Sources
The data used in this project is derived from the Olist E-commerce dataset available on [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).

## Methodology
1. **Data Transfer**: The project starts by transferring CSV files into a PostgreSQL database using Python's Pandas and SQLAlchemy libraries.
2. **Data Analysis**: We analyze the data to derive insights regarding geographic performance, seller performance, payment type analysis, order habits, and customer behavior.
3. **Visualization**: We create visualizations to highlight the insights found during the analysis phase.

## Key Insights
- **Customer Concentration**: The top 5 customers account for **30%** of total revenue.
- **Geographic Performance**: São Paulo (SP) is the most popular state, with a significantly higher transaction volume than other regions.
- **Product Review Performance**: Musical CDs received the highest average review ratings, while books had the most reviews overall.
- **Payment Methods**: Credit cards are the most popular payment type among customers.
- **Seller Performance**: The top 500 sellers contribute to **80%** of total sales, indicating a strong seller concentration.
- **Top Selling Categories**: The highest selling category is **Health and Beauty**, followed by **Watches** and **Gifts**.

## Visualizations
Visualizations were created to effectively present the insights identified:
- Sales performance and customer analysis graphs.
- Payment type distribution charts.
- Review ratings by product category (and more)
