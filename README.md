# F1Racing  
**F1 Racing Database Analysis**  
*CSCI Database 265*

## Contributors  
- Jamell Alvarez  

## Dataset  
[F1 Dataset from Kaggle (1950–2024)](https://www.kaggle.com/datasets/lakshayjain611/f1-races-results-dataset-1950-to-2024?resource=download)

## Purpose  
The F1 Racing Database is designed to store, organize, and analyze data related to Formula 1 racing. It includes information on drivers, teams, race results, and fastest lap times. The goal is to support performance tracking (e.g., race wins, points, and lap times) across seasons. This database can assist researchers or F1 enthusiasts in evaluating and comparing driver and team performance over time.

## Entities  
- **Drivers**: Driver name, nationality, car, points, team code, year  
- **Teams**: Team name, total points, car performance, year  
- **Winners**: Race results including grand prix name, winner, laps, and time  
- **FastestLaps**: Fastest laps for each race with driver and car  
- **DriverChangesLog**: Tracks driver changes (e.g., team switches)  

## Relationships  
- A **Driver** belongs to a **Team** (via car and code)  
- A **Winner** is a **Driver** (linked by code)  
- A **FastestLap** is recorded by a **Driver**  
- **DriverChangesLog** links to changes in the **Drivers** table  

## ER Diagram
[View ER Diagram (PDF)](F1%20Racing%20.pdf)

## Project Highlights
- Comprehensive Database Design: Schema models real-world relationships between drivers, teams, and races
- SQL Proficiency: Includes meaningful queries, stored procedures, transactions, and triggers

## License

This project is not licensed for commercial use.  
It is intended solely for educational purposes as part of a school assignment.  
No official license is applied.

