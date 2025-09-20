# 🍽️ Restaurant Database Project

This project simulates a restaurant’s ordering system using SQL and CSV data. It contains menu details, customer orders, and SQL scripts to analyze sales performance.

## 📂 Project Structure
```
restaurant_db_project/
│── data/
│    ├── menu_items.csv
│    ├── order_details.csv
│    └── restaurant_db_data_dictionary.csv
│── schema.sql
│── queries.sql
│── README.md
```

- **data/** → Raw CSV files (menu items, orders, and data dictionary).
- **schema.sql** → SQL script to create the database tables.
- **queries.sql** → Sample SQL queries for analysis.
- **README.md** → Documentation for the project.

## 🗄️ Database Schema

### menu_items
| Column        | Description                              |
|---------------|------------------------------------------|
| menu_item_id  | Unique ID of a menu item (PK)            |
| item_name     | Name of a menu item                      |
| category      | Category or type of cuisine              |
| price         | Price of the menu item                   |

### order_details
| Column           | Description                                     |
|------------------|-------------------------------------------------|
| order_details_id | Unique ID of an item in an order (PK)           |
| order_id         | ID of an order                                  |
| order_date       | Date an order was placed                        |
| order_time       | Time an order was placed                        |
| item_id          | Matches menu_item_id in menu_items (FK)         |

## 🚀 How to Use

1. Create a database:
   ```sql
   CREATE DATABASE restaurant_db;
   USE restaurant_db;
   ```

2. Run the schema file:
   ```sql
   SOURCE schema.sql;
   ```

3. Import the CSV files (using **Table Data Import Wizard** in MySQL Workbench).

4. Run the queries:
   ```sql
   SOURCE queries.sql;
   ```

## 📊 Example Analyses

Some insights you can generate using this dataset:

1. **Total revenue** – overall sales amount.
2. **Top 10 popular items** – most ordered menu items.
3. **Revenue by category** – which cuisine type makes the most money.
4. **Orders per day** – track customer activity daily.
5. **Peak ordering hours** – busiest times of the day.
6. **Average order size** – typical number of items per order.
7. **Highest revenue order** – which order generated the most sales.
8. **Most expensive & cheapest menu items**.
9. **Daily revenue trend** – sales growth over time.

💡 This project is a great starting point for **SQL portfolio work** — you can expand it by adding stored procedures, views, or even Power BI/Tableau dashboards for visualization.
