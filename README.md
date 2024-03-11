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

