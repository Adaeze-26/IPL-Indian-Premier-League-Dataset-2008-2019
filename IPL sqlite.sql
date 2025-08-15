SELECT name 
FROM sqlite_master 
WHERE type = 'table';

select * From matches

--Q1 What is the total number of matches in this dataset?
SELECT COUNT(*) AS Total_matches
FROM matches;
--Q2 What is the total runs scored in all seasons
SELECT SUM(total_runs) AS Total_runs
FROM deliveries;
--Q3 WHat is the total number of matches played in each season
SELECT season, COUNT(*) AS Matches_played
FROM matches
GROUP BY season
ORDER BY season;
--Q4 Top 5 teams with most win
SELECT winner, COUNT(*) AS wins
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY wins DESC
LIMIT 5;
--Q5 Who are the top scorers in each season
SELECT Season,batsman, SUM(batsman_runs) AS Total_runs
FROM deliveries
join matches on deliveries.Match_id = matches.Match_id
GROUP BY Season
ORDER BY total_runs DESC
--Q6 How many matches were dl methods applied
SELECT count(match_id)
FROM matches
WHERE dl_applied = 1;
--Q7 Player with the most Player of the Match Award
SELECT player_of_match, COUNT(*) AS Awards
FROM matches
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 1;
--Q8 Average runs per match by season
SELECT Season, ROUND(AVG(total_runs), 2) AS avg_runs_per_match
FROM matches 
JOIN deliveries ON deliveries. Match_id= matches.match_id
GROUP BY Season
ORDER BY Season;
--Q9 Does batting or fielding first give you a better chance of winning the match?
SELECT toss_decision, COUNT(*) AS wins
FROM matches
WHERE toss_winner = winner  -- only count when toss winner also wins the match
GROUP BY toss_decision;
--Q10 Who is the youngest player in the dataset and which country is he from?
select Player_Name, Country, DOB 
from Players 
where DOB IS NOT NULL 
Order by DOB DESC 
limit 1
--Q11 Which city was the match most played in?
select City, count(*) as Count
from matches
where City IS NOT NULL
Group by CIty
order by Count DESC
--Q12a Which team has the highest home win?
select Max(Home_wins) as Highest_home_wins, Team
from teamwise_home_and_away
--Q12b Which team has the highest away win?
select  Max(Away_wins) as Highest_Away_wins, TEam
from teamwise_home_and_away
--Q13 which team won the toss decision the most
select Toss_winner, count(*) as count
From matches
Group by Toss_winner
Order by count DESC
limit 1
--Q14 which toss decision was prevalent
select Toss_decision, count(*) as Count
from matches
group by Toss_decision
Order by Count DESC
--Q15 Players with Average greater than 40
SELECT Batsman, Average
FROM most_runs_average_strikerate
WHERE  round(Average) > 40
order by Average DESC





