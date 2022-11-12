# customer-value-analysis

Create table facebook_web_log
(
Userid NUMERIC,
Time_stamp TIMESTAMP,
Actions VARCHAR(30)
);


INSERT INTO facebook_web_log values(0,'2019-04-25 13:30:15','page_load');
INSERT INTO facebook_web_log values(0,'2019-04-25 13:30:18','page_load');
INSERT INTO facebook_web_log values(0,'2019-04-25 13:30:40','scroll_down');
INSERT INTO facebook_web_log values(0,'2019-04-25 13:30:45','scroll_up');
INSERT INTO facebook_web_log values(0,'2019-04-25 13:31:10','scroll_down');
INSERT INTO facebook_web_log values(0,'2019-04-25 13:31:25','scroll_down');
INSERT INTO facebook_web_log values(0,'2019-04-25 13:31:40','page_exit');
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:00','page_load');
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:10','scroll_down');
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:15','scroll_down');
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:20','scroll_down');
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:25','scroll_down');
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:30','scroll_down');
INSERT INTO facebook_web_log values(1,'2019-04-25 13:40:35','page_exit');
INSERT INTO facebook_web_log values(2,'2019-04-25 13:41:21','page_load');
INSERT INTO facebook_web_log values(2,'2019-04-25 13:41:30','scroll_down');
INSERT INTO facebook_web_log values(2,'2019-04-25 13:41:35','scroll_down');
INSERT INTO facebook_web_log values(2,'2019-04-25 13:41:40','scroll_up');
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:00','page_load');
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:10','scroll_down');
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:20','scroll_down');
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:25','scroll_up');
INSERT INTO facebook_web_log values(1,'2019-04-26 11:15:35','page_exit');
INSERT INTO facebook_web_log values(0,'2019-04-28 14:30:15','page_load');
INSERT INTO facebook_web_log values(0,'2019-04-28 14:30:10','page_load');
INSERT INTO facebook_web_log values(0,'2019-04-28 13:30:40','scroll_down');
INSERT INTO facebook_web_log values(0,'2019-04-28 15:31:40','page_exit');


Write a SQL query to calculate each user's average session time. 
A session is defined as the time difference between a page_load and page_exit. 
Assume a user has only 1 session per day and if there are multiple of the same
events on that day, consider only the latest page_load and earliest page_exit. 
Output the user_id and their average session time   