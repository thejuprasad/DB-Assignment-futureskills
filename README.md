# Database Schema Answers

## Overview

This repository contains database schema information for the application. Below, you'll find details about the relationship between the "Product" and "Product_Category" entities.

## Entity Relationship: Product-Product_Category First Answer

The "Product" and "Product_Category" entities are related through the following foreign key:

- **Product Table:**
  - Attribute: `category_id` (Foreign Key)
  - Type: Integer
  - References: "Product_Category" table's primary key (`id`)

- **Product_Category Table:**
  - Primary Key: `id` 
  - Type: Integer

### Relationship Details:

- The "Product" table's `category_id` is a foreign key that establishes a link to the primary key `id` in the "Product_Category" table.
- This relationship represents a 0-1 association, indicating that each product may or may not belong to a product category.
- The foreign key constraint ensures data integrity by requiring valid values in the `category_id` column of the "Product" table, referencing existing values in the `id` column of the "Product_Category" table.

## Ensuring Valid Category Assignment for Products - Second Answer

To ensure that each product in the "Product" table has a valid category assigned, a foreign key constraint has been implemented between the "Product" and "Product_Category" tables.

### Foreign Key Constraint:

- **Product Table:**
  - Attribute: `category_id` (Foreign Key)
  - Type: Integer
  - References: "Product_Category" table's primary key (`id`)
  
```sql
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR,
    -- other columns...
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id)
);```


## Product_Category Table

- **Primary Key:** `id` (Bolded)
- **Type:** Integer

### Relationship Details with "Product" Table:

The foreign key constraint establishes a critical relationship between the "Product" and "Product_Category" tables, ensuring data integrity and valid category assignments.

- The "Product" table's `category_id` is designated as a foreign key, creating a direct association with the primary key `id` in the "Product_Category" table.

- This constraint guarantees that any value entered into the `category_id` column in the "Product" table must correspond to a valid entry in the `id` column of the "Product_Category" table.

- In case of attempts to insert or update a product with an invalid `category_id`, the database will raise a foreign key violation error. This mechanism is crucial for preventing inconsistent data and maintaining the integrity of the relationships between products and their respective categories.

By enforcing this foreign key constraint, the system ensures that each product is linked to a valid category, contributing to a robust and reliable database structure.
