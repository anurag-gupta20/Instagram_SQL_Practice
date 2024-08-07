CREATE TABLE Photos (
    id INT PRIMARY KEY,
    image_url VARCHAR(100),
    user_id INT,
    created_at DATE,
    FOREIGN KEY (user_id)
        REFERENCES Users (id)
);

INSERT INTO Photos (id, image_url, user_id, created_at) VALUES
(1, 'http://example.com/photo1.jpg', 1, '2023-02-01'),
(2, 'http://example.com/photo2.jpg', 1, '2023-02-02'),
(3, 'http://example.com/photo3.jpg', 1, '2023-02-03'),
(4, 'http://example.com/photo4.jpg', 2, '2023-02-04'),
(5, 'http://example.com/photo5.jpg', 2, '2023-02-05'),
(6, 'http://example.com/photo6.jpg', 3, '2023-02-06'),
(7, 'http://example.com/photo7.jpg', 3, '2023-02-07'),
(8, 'http://example.com/photo8.jpg', 4, '2023-02-08'),
(9, 'http://example.com/photo9.jpg', 4, '2023-02-09'),
(10, 'http://example.com/photo10.jpg', 5, '2023-02-10'),
(11, 'http://example.com/photo11.jpg', 6, '2023-02-11'),
(12, 'http://example.com/photo12.jpg', 7, '2023-02-12'),
(13, 'http://example.com/photo13.jpg', 8, '2023-02-13'),
(14, 'http://example.com/photo14.jpg', 8, '2023-02-14'),
(15, 'http://example.com/photo15.jpg', 9, '2023-02-15'),
(16, 'http://example.com/photo16.jpg', 10, '2023-02-16'),
(17, 'http://example.com/photo17.jpg', 11, '2023-02-17'),
(18, 'http://example.com/photo18.jpg', 12, '2023-02-18'),
(19, 'http://example.com/photo19.jpg', 13, '2023-02-19'),
(20, 'http://example.com/photo20.jpg', 15, '2023-02-20');

select * from Photos;