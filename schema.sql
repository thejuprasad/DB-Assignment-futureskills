-- Create Product_Category table
CREATE TABLE Product_Category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product_Inventory table
CREATE TABLE Product_Inventory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Discount table
CREATE TABLE Discount (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    discount_percent DECIMAL(5, 2) NOT NULL,
    active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product table with foreign key references
CREATE TABLE Product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    SKU VARCHAR(50),
    category_id INT,
    inventory_id INT,
    price DECIMAL(10, 2) NOT NULL,
    discount_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id),
    FOREIGN KEY (inventory_id) REFERENCES Product_Inventory(id),
    FOREIGN KEY (discount_id) REFERENCES Discount(id)
);
