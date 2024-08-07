CREATE DATABASE Instagram;
USE Instagram;

-- We want to reward our user who have been around the longest.
-- Q - Find the 5 oldest users.

	select * from Users order by created_at limit 5;

-- We need to figure out when to schedule an ad campaign.
-- Q - What day of the week most users register on?

	select dayname(created_at) as Day, count(username) as New_users from Users group by dayname(created_at) order by New_users desc limit 1;

-- We want to target our inactive users with an email campaign.
-- Q - Find the users who have never posted a photo.

	select username as Username
	from Users left join Photos
	on Users.id = Photos.user_id
	where Photos.user_id is null;

-- We're running a contest to see who can get the most likes on a single photo.
-- Q - Who won?

	select photo_id, count(user_id) from Likes group by photo_id order by count(user_id) desc limit 1;

-- Our investors want to know...
-- Q - How many times does the average user post?

	select avg(No_of_Posts) as Average_Posts from (
	select Users.id, count(user_id) as No_of_Posts 
	from Photos left join Users
	on Photos.user_id = Users.id
	group by Users.id) as No_of_Posts;

-- A brand wants to know which hashtags to use in a post.
-- Q - What are the top 5 most commonly used hashtags?

	select tag_name, count(hashtag_id) as No_of_Use
	from Hashtags left join Photo_Tags
	on Hashtags.id = Photo_Tags.hashtag_id
	group by tag_name order by count(hashtag_id) desc limit 5;

-- We have a small problem with bots on our sites...
-- Q - Find user who have liked every single photo on site.

	delimiter // 
	create procedure Liked_By(in photoid int, out username varchar(100))
	begin
		select Users.username
		from Users left join Likes
		on Users.id = Likes.user_id
		where Likes.photo_id = photoid;
	end //
	delimiter ;

	call Liked_By(4, @username);

	/*  OR  */

	select id, username, count(user_id) as No_of_Likes
	from Users left join Likes
	on Users.id = Likes.user_id
	group by id order by count(user_id) desc;

-- We also have a problem with celebrities
-- Q - Find users who have never commented on a photo.

	select username as Username
	from Users left join Comments
	on Users.id = Comments.user_id
	where Comments.user_id is null;

-- Are we overrun by bots and celebrity accounts?
-- Q - Find the percentage of our users who have either never commented on a photo or have commented on every photo.

	create view No_of_Likes as
	select Users.id, Users.username, count(Comments.user_id) as No_of_Likes
	from Users left join Comments
	on Users.id = Comments.user_id
	group by Users.id order by No_of_Likes;

	select * from No_of_Likes;

	select avg(Null_Likes) as Avg_Null_Likes from (select count(id) as Null_Likes from No_of_Likes where No_of_Likes = 0 ) as Null_Likes;

	select avg(Most_Likes) as Avg_Most_Likes from (select count(id) as Most_Likes from No_of_Likes group by id having max(No_of_Likes)) as Most_Likes;
