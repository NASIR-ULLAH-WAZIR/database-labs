-- Lab 1: Analytical Queries
-- Author: Nasir ullah khan wazir

-- Query 1: Books by rating
SELECT title, author, rating
FROM books_read
ORDER BY rating DESC;

-- Query 2: Average pages by category
SELECT category, AVG(pages) as avg_pages
FROM books_read
GROUP BY category;

-- Query 3: Total number of books per author
SELECT author, COUNT(*) as total_books
FROM books_read
GROUP BY author
ORDER BY total_books DESC;

-- Query 4: Books finished after a specific date
SELECT title, date_finished
FROM books_read
WHERE date_finished > '2024-09-01'
ORDER BY date_finished;

-- Query 5: Top-rated books
SELECT title, rating
FROM books_read
WHERE rating >= 4.5
ORDER BY rating DESC;
