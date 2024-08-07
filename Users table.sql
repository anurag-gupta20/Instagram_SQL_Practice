CREATE TABLE Users (
    id INT PRIMARY KEY,
    username VARCHAR(100),
    created_at DATE
);

INSERT INTO Users (id, username, created_at) VALUES
(1, 'John Doe', '2023-01-01'),
(2, 'Jane Smith', '2023-01-02'),
(3, 'Alice Johnson', '2023-01-03'),
(4, 'Chris Lee', '2023-01-04'),
(5, 'David Brown', '2023-01-05'),
(6, 'Emily Davis', '2023-01-06'),
(7, 'Frank Miller', '2023-01-07'),
(8, 'Grace Wilson', '2023-01-08'),
(9, 'Henry Moore', '2023-01-09'),
(10, 'Ivy Taylor', '2023-01-10'),
(11, 'Jack Anderson', '2023-01-11'),
(12, 'Karen Thomas', '2023-01-12'),
(13, 'Leo White', '2023-01-13'),
(14, 'Mona Clark', '2023-01-14'),
(15, 'Nina Martin', '2023-01-15');

select * from Users;