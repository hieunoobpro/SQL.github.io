1. 
INSERT INTO tbl_image (status1) VALUES ('active'),('inactive'), ('active'), ('inactive'), ('inactive'), ('active'), ('active'), ('inactive'), ('active'), ('inactive');
2. 
INSERT INTO tbl_role (des, roleName) VALUES ('Administrator', 'admin'), ('Regular User', 'user'), ('Moderator', 'moderator'), ('Editor', 'editor'), 
('Contributor', 'contributor'), ('Subscriber', 'subscriber'), ('VIP User', 'vip'), ('Premium User', 'premium'), ('Trial User', 'trial'), ('Guest User', 'guest');
3. 
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('John Doe', '1234567890', '123 Main St', 'johndoe', 'password', 'johndoe@email.com', '1990-01-01', 2, 1);
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('Jane Doe', '0987654321', '456 Oak St', 'janedoe', 'password', 'janedoe@email.com', '1995-05-05', 2, 1);
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('Bob Smith', '5555555555', '789 Elm St', 'bobsmith', 'password', 'bobsmith@email.com', '1985-12-31', 3, 1);
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('Alice Lee', '2222222222', '321 Maple St', 'alicelee', 'password', 'alicelee@email.com', '2000-06-15', 2, 1);
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('David Kim', '3333333333', '987 Pine St', 'davidkim', 'password', 'davidkim@email.com', '1998-02-28', 2, 1);
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('Mary Johnson', '4444444444', '456 Cedar St', 'maryjohnson', 'password', 'maryjohnson@email.com', '1992-11-10', 2, 1);
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('Michael Brown', '6666666666', '321 Oak St', 'michaelbrown', 'password', 'michaelbrown@email.com', '1980-09-22', 4, 1);
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('Sarah Wilson', '7777777777', '789 Walnut St', 'sarahwilson', 'password', 'sarahwilson@email.com', '1975-03-05', 3, 1);
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('Tom Davis', '8888888888', '654 Birch St', 'tomdavis', 'password', 'tomdavis@email.com', '1995-08-20', 2, 1);
INSERT INTO tbl_user (name, phone, adress, username, password1, email, dateOfBirth, role_id, status1) 
VALUES ('Emily Chen', '9999999999', '789 Oak St', 'emilychen', 'password', 'emilychen@email.com', '1999-12-01', 2, 1);
4. 
INSERT INTO tbl_post (content, user_id, status1) VALUES ('This is my first post', 1, 'published');
INSERT INTO tbl_post (content, user_id, status1) VALUES ('Check out my new blog!', 2, 'published');
INSERT INTO tbl_post (content, user_id, status1) VALUES ('How to cook a perfect steak', 3, 'draft');
INSERT INTO tbl_post (content, user_id, status1) VALUES ('The best places to visit in Europe', 4, 'published');
INSERT INTO tbl_post (content, user_id, status1) VALUES ('My thoughts on the latest movie releases', 5, 'published');
INSERT INTO tbl_post (content, user_id, status1) VALUES ('Tips for starting a successful business', 6, 'draft');
INSERT INTO tbl_post (content, user_id, status1) VALUES ('My experience with learning a new language', 7, 'published');
INSERT INTO tbl_post (content, user_id, status1) VALUES ('The benefits of daily exercise', 8, 'published');
INSERT INTO tbl_post (content, user_id, status1) VALUES ('How to create a stunning website', 9, 'draft');
INSERT INTO tbl_post (content, user_id, status1) VALUES ('My favorite recipes for summer', 10, 'published');
5. 
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (1, 2, 'Great first post!', 'published');
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (2, 3, 'I love your blog design!', 'published');
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (3, 4, 'Looking forward to reading your tips!', 'draft');
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (4, 5, 'Thanks for sharing, I will definitely visit these places!', 'published');
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (5, 6, 'Interesting perspective on the movies', 'published');
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (6, 7, 'Can''t wait to read your tips for starting a business!', 'draft');
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (7, 8, 'Learning a new language is always a challenge, looking forward to hearing about your experience!', 'published');
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (8, 9, 'Exercise is so important, thanks for sharing!', 'published');
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (9, 10, 'I would love to learn more about creating a website!', 'draft');
INSERT INTO tbl_comment (post_id, user_id, content, status1) VALUES (10, 1, 'Can''t wait to try out your summer recipes!', 'published');
6. 
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('post', 1);
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('post', 2);
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('comment', 1);
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('post', 3);
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('comment', 2);
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('post', 4);
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('post', 5);
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('comment', 3);
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('post', 6);
INSERT INTO tbl_images_comments_posts (model_Type, model_Id) VALUES ('comment', 4);
7. 
INSERT INTO tbl_like (user_id, status1) VALUES (1, 'liked');
INSERT INTO tbl_like (user_id, status1) VALUES (2, 'liked');
INSERT INTO tbl_like (user_id, status1) VALUES (3, 'liked');
INSERT INTO tbl_like (user_id, status1) VALUES (4, 'liked');
INSERT INTO tbl_like (user_id, status1) VALUES (5, 'liked');
INSERT INTO tbl_like (user_id, status1) VALUES (6, 'liked');
INSERT INTO tbl_like (user_id, status1) VALUES (7, 'liked');
INSERT INTO tbl_like (user_id, status1) VALUES (8, 'liked');
INSERT INTO tbl_like (user_id, status1) VALUES (9, 'liked');
INSERT INTO tbl_like (user_id, status1) VALUES (10, 'liked');
8. 
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('post', 1, 1);
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('post', 2, 2);
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('comment', 1, 3);
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('post', 3, 4);
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('comment', 2, 5);
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('post', 4, 6);
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('post', 5, 7);
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('comment', 3, 8);
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('post', 6, 9);
INSERT INTO tbl_likes_comments_posts (model_Type, model_Id, likes_id) VALUES ('comment', 4, 10);
9. 
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('friend', 1, 2, 'accepted');
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('friend', 2, 3, 'pending');
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('flower', 1, 4, 'accepted');
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('friend', 3, 4, 'accepted');
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('blocker', 5, 1, 'blocked');
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('friend', 6, 7, 'pending');
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('flower', 8, 1, 'pending');
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('friend', 9, 1, 'accepted');
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('flower', 10, 1, 'accepted');
INSERT INTO tbl_relationship (relationshipName, sender_id, receiver_id, status) VALUES ('friend', 2, 4, 'rejected');
10. 
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 1', 'avatar1.png', 'active');
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 2', 'avatar2.png', 'inactive');
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 3', 'avatar3.png', 'active');
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 4', 'avatar4.png', 'active');
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 5', 'avatar5.png', 'inactive');
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 6', 'avatar6.png', 'active');
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 7', 'avatar7.png', 'inactive');
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 8', 'avatar8.png', 'active');
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 9', 'avatar9.png', 'active');
INSERT INTO tbl_boxChat (name, avatar, status) VALUES ('BoxChat 10', 'avatar10.png', 'inactive');
11. 
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (1, 1);
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (2, 1);
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (1, 2);
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (3, 2);
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (4, 3);
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (1, 3);
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (5, 4);
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (6, 4);
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (7, 5);
INSERT INTO tbl_user_boxChat (user_id, boxChat_id) VALUES (8, 5);
12. 
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (1, 1, 'Hello, how are you?', 'sent', null);
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (2, 1, 'I am doing well, thank you!', 'received', null);
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (1, 2, 'Have you seen the latest movie?', 'sent', null);
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (3, 2, 'No, I haven\'t. Is it any good?', 'received', null);
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (4, 3, 'I am feeling tired today.', 'sent', null);
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (1, 3, 'Maybe you should take a nap.', 'received', null);
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (5, 4, 'I love this song!', 'sent', 'song1.mp3');
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (6, 4, 'Me too!', 'received', 'song1.mp3');
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (7, 5, 'Do you want to meet for lunch tomorrow?', 'sent', null);
INSERT INTO tbl_chat (user_id, boxChat_id, content, status, images) VALUES (8, 5, 'Sure, where should we go?', 'received', null);