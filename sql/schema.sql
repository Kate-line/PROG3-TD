-- Product Table
CREATE TABLE Product (
    id int PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price float NOT NULL CHECK (price > 0),
    creation_datetime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Product Category
CREATE TABLE Product_category (
    id int PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    product_id int,
    FOREIGN KEY (product_id) REFERENCES Product(id)
)