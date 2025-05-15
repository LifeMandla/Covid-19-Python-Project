CREATE DATABASE IF NOT EXISTS bookstore_db;
USE bookstore_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publication_year INT,
    price DECIMAL(5,2) NOT NULL,
    genre VARCHAR(50)
);

-- Step 3: Insert book data
INSERT INTO books (title, author, publication_year, price, genre) VALUES
('The Hitchhiker''s Guide to the Galaxy', 'john Adams', 1979, 12.99, 'Science Fiction'),
('Pride and Prejudice', 'life', 1813, 9.99, 'Classic Literature'),
('The Martian', 'Andy Weir', 2011, 15.50, 'Science Fiction');

-- Step 4: Query books in Science Fiction genre, sorted by price descending
SELECT title, author, price
FROM books
WHERE genre = 'Science Fiction'
ORDER BY price DESC;

-- Step 5: Increase price of life books by 10%
UPDATE books 
SET 
    price = 250
WHERE
    author = 'life';

-- Step 6: Check updated result
SELECT * FROM books WHERE author = 'life';
