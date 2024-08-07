CREATE TABLE Follows (
    follower_id INT,
    followee_id INT,
    created_at DATE,
    FOREIGN KEY (follower_id)
        REFERENCES Users (id),
    FOREIGN KEY (followee_id)
        REFERENCES Users (id)
);

INSERT INTO Follows (follower_id, followee_id, created_at) VALUES
(1, 2, '2023-01-16'),
(2, 3, '2023-01-17'),
(3, 4, '2023-01-18'),
(4, 5, '2023-01-19'),
(5, 6, '2023-01-20'),
(6, 7, '2023-01-21'),
(7, 8, '2023-01-22'),
(8, 9, '2023-01-23'),
(9, 10, '2023-01-24'),
(10, 11, '2023-01-25'),
(11, 12, '2023-01-26'),
(12, 13, '2023-01-27'),
(13, 14, '2023-01-28'),
(14, 15, '2023-01-29'),
(15, 1, '2023-01-30');

select * from Follows;