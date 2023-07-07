SELECT * 
FROM `VG Sales`.`tableconvert.com_jwkpa1`;
-- Read Data


SELECT genre, SUM(global_sales) AS global_sales
FROM `VG Sales`.`tableconvert.com_jwkpa1`
GROUP BY genre
ORDER BY global_sales desc;

-- Action produces the most sales with sports right behind

SELECT Genre, COUNT(*) AS count_value
FROM `VG Sales`.`tableconvert.com_jwkpa1`
GROUP BY Genre
ORDER BY count_value DESC;

-- When we look at the amount of games produced by genre. Action has the most at 3370. 
-- Likely due to it selling the most. But is it selling due to an over abundance of action games or is it what the people want.


SELECT genre, avg(user_score) AS Avg_Score_User, 
avg(critic_score) AS Avg_Score_Crit,
avg(user_count) AS Avg_count_User,
avg(critic_count) AS Avg_count_Crit
FROM `VG Sales`.`tableconvert.com_jwkpa1`
GROUP BY Genre
-- ORDER BY Avg_Score_Crit desc
-- ORDER BY avg_Score_User desc
-- ORDER BY Avg_count_crit desc
-- ORDER BY Avg_count_user desc
;

-- Shooter outshines significantly in Average Score for User and Critic, along with average count for user and critic. 
-- Shooter is likely the way to go as it is what the critics and users enjoy. 
-- Action still does well but it is levels away from Shooter
-- Why is that action performs well but isn't sold the most 

-- Since we know shooter is the best option as it is enjoyed by both parties (Users and Critics)
-- We should see which publisher does it the best



SELECT publisher, COUNT(*) AS shooting_games_count, 
avg(Critic_Score) AS Shooters_Critic, 
avg(User_Score) AS Shooter_User
FROM `VG Sales`.`tableconvert.com_jwkpa1`
WHERE genre = 'Shooter'
GROUP BY publisher
ORDER BY COUNT(*) DESC;

-- When it comes to Shooters, Activision is the most shotter games. But scores are not as high 
-- In this scenario the best publisher for a shooting game is Electronic Arts and Ubisoft 


-- In conclusion, if a game were to be created. I would suggest a Shooter published through Electronic Arts or Ubisoft. 
-- Although Action based games sell more, it is not what the people want. The scores from critics and users show that Shooters are much more appealing to them 
-- However, I can see an Action based game being a wise investment if you want to make a quick profit




