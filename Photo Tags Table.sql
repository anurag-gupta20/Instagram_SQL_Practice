CREATE TABLE Photo_Tags (
    photo_id INT,
    hashtag_id INT,
    FOREIGN KEY (photo_id)
        REFERENCES Photos (id),
    FOREIGN KEY (hashtag_id)
        REFERENCES Hashtags (id)
);

INSERT INTO Photo_Tags (photo_id, hashtag_id) VALUES
(1, 1),
(1, 6),
(2, 1),
(2, 9),
(4, 2),
(3, 10),
(4, 3),
(4, 11),
(15, 4),
(5, 12),
(6, 5),
(6, 13),
(7, 6),
(7, 14),
(8, 7),
(8, 15),
(9, 8),
(9, 16),
(10, 9),
(10, 17),
(11, 10),
(11, 18),
(12, 11),
(12, 19),
(13, 12),
(13, 20),
(14, 13),
(14, 1),
(15, 14),
(15, 2),
(16, 15),
(16, 3),
(17, 16),
(7, 4),
(18, 17),
(18, 5),
(19, 18),
(15, 6),
(20, 19),
(20, 7),
(1, 20),
(2, 8),
(3, 9),
(4, 10),
(5, 11),
(6, 12),
(7, 13),
(8, 14),
(9, 15),
(10, 16),
(11, 17),
(12, 18),
(13, 19),
(14, 20),
(15, 1);

select * from Photo_Tags;