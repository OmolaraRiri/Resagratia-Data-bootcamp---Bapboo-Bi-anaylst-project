# Resagratia Project

This project is part of my Data Bootcamp, where the goal is to analyze customer and sales data using SQL queries. The dataset contains information about customers, their demographic details, and their sales history. Below is a comprehensive explanation of the data and key results derived from SQL queries.

## About the Project
This project is a **sample sql project** designed to simulate a real-life SQL interview scenario. The primary goal is to practice writing SQL queries to solve specific business questions based on a dataset presented in images. Since the dataset is incomplete (represented by an image and not in a usable format), the project does not involve running the queries to obtain actual outputs.

The focus of this project is on writing **correct and optimized SQL queries** that could be used in a real-world SQL interview or analytical situation. The dataset images provided serve as a sample of what a real dataset might look like.

### Important Note:
- **This project does not involve executing the queries** since the dataset is only available as an image, not as a usable table. 
- **It is purely for SQL query practice** and helps to demonstrate how to approach solving SQL problems that might be presented in an interview or on the job.
- 
## SQL Queries

All SQL queries used in this project are available in the Baoboo BI anaylst.sql file.

## Dataset Overview

### Customer Table

The **Customer** table contains details about the customers, including their gender, location, birth date, and the date they joined the company.

![Customer Table](images/![customer table](https://github.com/user-attachments/assets/01ba11c5-02ac-48af-b7aa-f1425347396e)

- **MartCustomerId**: Unique identifier for each customer.
- **Gender**: The gender of the customer (Male/Female).
- **Town**: The location or town where the customer lives.
- **DateOfBirth**: The birthdate of the customer.
- **JoiningDate**: The date when the customer joined the company.

### Sales Table

The **Sales** table records each sale made, linking it to the customer, the product sold, and additional details.

![Sales Table](![sales table](https://github.com/user-attachments/assets/2793acd3-1227-4565-a7a4-1faf72c678ec)
)

- **MartCustomerId**: Links to the unique customer who made the purchase.
- **MartLoanId**: Unique identifier for each sale/loan transaction.
- **DateOfSale**: The date when the sale was completed.
- **ProductCategory**: The category of the product (e.g., MK TV, MK Classic).
- **ProductSubCategory**: Further classification of the product (e.g., M-KOPA 500, M-KOPA 5).

---

## Project Tasks and Insights

### Task 1: Select all Male Customers from Outside Nairobi

The first analysis aimed to identify all male customers who are not located in Nairobi. This helps in understanding the distribution of male customers across other regions.

### Task 2: Calculate Customer Age When They Joined

We calculated the age of each customer at the time they joined. This metric helps in segmenting the customer base by their age when they started using the company’s products or services.

### Task 3: Average Age of Customers When Joining

To understand customer demographics better, we calculated the average age of customers at the time of joining. The results indicate the general age group the company attracts.


### Task 4: Average, Maximum, and Minimum Age per Gender When Joining

This task provided a breakdown of the customer age when joining, categorized by gender. It gives insights into which age groups and genders are more likely to join the company at specific stages of life.

### Task 5: Top 100 Customers by Sales

We ranked the top 100 customers who generated the most sales and displayed their MartCustomerId, Town, and number of sales. This analysis helps in identifying high-value customers and the regions where they are concentrated.

### Task 6: Number of Customers Without Sales

This query calculated how many customers in the database did not generate any sales. Understanding this gap can help the business identify potential opportunities for re-engagement.

### Task 7: Flagging 'M-KOPA 4' Products

An extra column was added to the Sales table to flag all transactions where the product was 'M-KOPA 4'. This analysis can help understand the demand for this specific product subcategory.

### Task 8: Sale Number for Each Customer

To track customer purchase behavior, a new column was added that shows the sequential sale number for each customer (e.g., 1 for the first sale, 2 for the second, etc.). This metric provides insight into customer loyalty and purchasing patterns.

---

## Insights from the Project

1. **Customer Demographics**: The dataset shows a wide range of customer ages when they joined, with slight variations between male and female customers.
  
2. **Sales Trends**: High-value customers are concentrated in certain regions. Understanding these trends can help in targeting specific locations for marketing or sales efforts.

3. **Product Popularity**: The 'M-KOPA 4' product has a significant portion of sales, indicating its popularity. Identifying such products can help the business in inventory planning and promotions.

4. **Non-Active Customers**: The number of customers without any sales indicates opportunities for re-engagement strategies, which could involve targeted marketing efforts or follow-up offers.

---

## Screenshots

Below are some screenshots of the dataset that were analyzed:

### Customer Table
![Customer Table](![customer table](https://github.com/user-attachments/assets/02c0f5a5-c46f-4b5b-b746-b8e899145bd4)
)

### Sales Table
![Sales Table](![sales table](https://github.com/user-attachments/assets/657faa57-326c-4724-9485-bae847d9592d)
)

---

## Conclusion

This project provided hands-on experience in writing SQL queries to explore and analyze data. The key insights derived from the customer and sales data offer valuable information for improving business strategies, such as targeting high-value customers, re-engaging inactive customers, and optimizing product sales.



---


