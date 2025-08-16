# **IPL-Indian-Premier-League-Dataset-2008-2019**
## Date: 16th August 2025
## **Summary**
The dataset covers all matches played in the Indian Premier League (IPL) from 2008 to 2019. It provides detailed information on match results, team performances, player statistics, and ball-by-ball deliveries. The purpose is to analyze trends, player contributions, and team outcomes across 12 seasons of the IPL.
## **Objectives**
1.	To understand match outcomes and team performance patterns.
2.	To evaluate player statistics such as batting average, strike rate, and wicket counts.
3.	To analyze the impact of toss decisions, venues, and home/away factors.
4.	To derive insights that can support strategy, fan engagement, and predictive modeling.
## **Data Source**
The dataset was obtained from Kaggle –  https://www.kaggle.com/datasets/ramjidoolla/ipl-data-set. It consists of multiple CSV files including:
1.	matches.csv – match details (venue, teams, winner, toss, results).
2.	deliveries.csv – ball-by-ball information.
3.	players.csv – player profiles.
4.	teams.csv – team information.
5.	teamwise_home_and_away.csv – home and away records.
6.	most_runs_average_strike_rate.csv – top batting stats.
## **Methodology and Tools**
1.	Data Cleaning – handled missing/null values, standardized team names, and removed unused columns using Power Query.
2.	Exporting Data – used DAX Studio to connect to the Power BI model and export cleaned tables into CSV files for further use in SQL.
3.	Integration – linked tables using match IDs and team/player identifiers.
4.	Analysis – used SQL for querying (e.g., wins, toss decision, total matches, averages) 
5.	Metrics – calculated total wins, home/away wins, top players, and team statistics.
6.	Built interactive dashboards in Power BI, including slicers for Team, IPL Season, and Match Result to allow flexible filtering of insights.
## **Analysis & Key Findings**
1.	Mumbai Indians (MI) and Chennai Super Kings (CSK) had the most consistent success.
2.	Toss decisions influenced results differently depending on venue/conditions.
3.	A group of batsmen maintained strike rates >100 and averages >40, highlighting elite performers.
4.	Home ground advantage played a major role for some teams.
5.	Ball-by-ball data highlights trends in boundaries, sixes, win by runs, win by wickets.
## **Recommendations**
1.	Teams should leverage home advantage by optimizing team selection based on venue-specific data.
2.	Player scouting can focus on batsmen with strike rates above 100 and averages above 40 for long-term consistency.
3.	Toss decisions should be venue-driven rather than random, as some grounds favor batting first vs. chasing.
4.	Visualization dashboards should be updated regularly to track trends across seasons and aid predictive analysis.
## **Conclusion**
The IPL dataset provides a rich foundation for cricket analytics. By cleaning the data in Power Query, exporting through DAX Studio, and analyzing with SQL and Power BI, valuable insights into team performance, player consistency, and match strategies were derived. This approach can guide both cricket teams and Sport analysts in making data-driven decisions.

