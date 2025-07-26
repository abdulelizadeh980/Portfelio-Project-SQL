# 🗂️ SQL Transaction Analysis Project (Oracle Database)

## 📌 Project Overview

This project focuses on performing analytical operations on a transactional dataset using **Oracle SQL**. It involves creating and importing data into three structured tables and executing multiple SQL queries to extract valuable business insights from banking transactions.

---

## 📊 Dataset and Tables

A total of **3 tables** were used in this project:

1. **`Transactions` (Fact Table)**  
   - Source: Excel file from the `Data Transactions` folder (filtered for Texas)
   - Description: Contains detailed records of customer transactions.

2. **`Customers` (Dimension Table)**  
   - Source: `Dim_customers.xlsx`
   - Description: Holds demographic and profile data about customers.

3. **`Transaction_Type` (Dimension Table)**  
   - Source: `Dim_transaction_type.xlsx`
   - Description: Describes the different types of transactions.

Each table was imported into the Oracle Database with a maximum of 1000 rows.

---

## 🛠 Tools & Technologies Used

- **Oracle SQL Developer**
- **Microsoft Excel**
- **Data Import Wizard / SQL Loader**
- **SQL Functions and Joins**
- **Date and String Manipulation**
- **Aggregate Functions**

---

## ✅ SQL Tasks Accomplished

Below are the analytics and transformation tasks completed:

1. ✅ Find the **last transaction date** for each customer and calculate the **days since** that date.
2. ✅ Identify the customer who made the **highest transaction amount**, the **amount**, and its **details**.
3. ✅ Count the **number of customers who have never made a transaction**.
4. ✅ For each customer, compute the **rounded average transaction amount** and display their **names in uppercase**.
5. ✅ Retrieve the **top 10 longest-duration transactions**.
6. ✅ Display **total number** and **total amount** of transactions for each **transaction type**.
7. ✅ Categorize customers into **age groups** and calculate the **average transaction amount** in each group.
8. ✅ Show the **transaction count** by **ATM ID** for **local vs non-local** customers.
9. ✅ Find the **top 10 customers** who used the **most unique ATMs**.
10. ✅ Calculate the **total transaction amount** by **customer type**.
11. ✅ List all transactions where **customer names are unique (non-duplicated)**.
12. ✅ Break down each customer's transactions by **year**.
13. ✅ Identify the **most frequently used ATM** for each customer.
14. ✅ Determine the **weekly transaction count** and **average amount** for all customers.
15. ✅ For customers with **2+ transactions**, calculate the **difference between their highest and second-highest** transaction amounts.

---

## 📂 Folder Structure

```plaintext
├── Data Transactions/
│   └── Texas_Transactions.xlsx
├── Dim_customers.xlsx
├── Dim_transaction_type.xlsx
├── SQL Scripts/
│   └── Create_Tables.sql
│   └── Import_Data.sql
│   └── All_Tasks_Queries.sql
├── README.md
