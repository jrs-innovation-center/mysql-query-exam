## INSTRUCTIONS

* Fork and clone this repo.
* Run the **db.sql** sql script to create the database, tables, and data.
* Review the contents and schema of each table. What is the intent of each table? Where are the foreign key columns?
* Create a sql script file named **answers.sql** containing the `SELECT` SQL statement answer for each challenge. Use code commenting to signify the answer for each challenge. Example:

  ```
  /*
  1) Select a distinct list of ordered airports codes.
  */

  SELECT ...
  ```

* Push your completed exam to your fork.
* Send your instructor a direct message containing the url to your exam GitHub repo.

> TO ANSWER ANY GIVEN CHALLENGE CORRECTLY YOU MUST MATCH THE OUTPUT EXACTLY INCLUDING COLUMN NAMES, ROW CONTENT AND ORDER.

## GRADING

Each challenge is worth 5 or 10 points. A total of 100 points is available. The test will be graded on the following scale:

| GRADING SCALE              | SCORE     |
| -------------------------- | --------- |
| OUTSTANDING                | 95 TO 100 |
| EXCEEDS EXPECTATIONS       | 85 TO 94  |
| MEETS EXPECTATIONS         | 70 TO 84  |
| BELOW EXPECTATIONS         | 60 to 69  |
| DOES NOT MEET EXPECTATIONS | BELOW 60  |

> TO ANSWER ANY GIVEN CHALLENGE CORRECTLY YOU MUST MATCH THE OUTPUT EXACTLY INCLUDING COLUMN NAMES, ROW CONTENT AND ORDER.

## CHALLENGES

1. Select a distinct list of ordered airports codes. Be sure to name the column correctly. Be sure to order the results correctly.

> Remember: TO ANSWER ANY GIVEN CHALLENGE CORRECTLY YOU MUST MATCH THE OUTPUT EXACTLY INCLUDING COLUMN NAMES, ROW CONTENT AND ORDER.

* Points: 5

Your results must look like this:

| Airports |
| -------- |
| ATL      |
| CLT      |
| DEN      |
| LAX      |
| SFO      |

2. Provide a list of flights with a delayed status that depart from San Francisco (SFO).

* Points: 5

Your results must look like this:

| name  | flightNumber | scheduledDepartDateTime | arriveAirport | status  |
| ----- | ------------ | ----------------------- | ------------- | ------- |
| Delta | 999          | 2017-10-25 12:00:00     | LAX           | delayed |
| Delta | 234          | 2017-10-25 12:30:00     | CLT           | delayed |

3. Provide a distinct list of cities that American Airlines departs from.

> Remember: TO ANSWER ANY GIVEN CHALLENGE CORRECTLY YOU MUST MATCH THE OUTPUT _EXACTLY_ INCLUDING COLUMN NAMES, ROW CONTENT AND ORDER.

* Points: 5

Your results must look like this:

| Cities |
| ------ |
| ATL    |
| DEN    |
| LAX    |

4. Provide a distinct list of airlines that conducts flights departing from ATL.

* Points: 5

Your results must look like this:

| Airline  |
| -------- |
| American |
| Delta    |

5. Provide a list of airlines, flight numbers, departing airports, and arrival airports where flights departed on time.

> Hint: The scheduled and actual depart date times can be used to determine if a flight is on time.

* Points: 5

Your results must look like this:

| name  | flightNumber | departAirport | arriveAirport |
| ----- | ------------ | ------------- | ------------- |
| Delta | 1033         | DEN           | SFO           |
| Delta | 1033         | DEN           | SFO           |
| Delta | 3242         | ATL           | LAX           |

6. Provide a list of airlines, flight numbers, gates, status, and arrival _times_ arriving into Charlotte (CLT) on 10-30-2017. Order your results by the arrival time.

> Hint: https://dev.mysql.com/doc/refman/5.7/en/date-and-time-functions.html

> Remember: TO ANSWER ANY GIVEN CHALLENGE CORRECTLY YOU MUST MATCH THE OUTPUT EXACTLY INCLUDING COLUMN NAMES, ROW CONTENT AND ORDER.

* Points: 5

Your results must look like this:

| Airline  | Flight | Gate | Arrival  | Status    |
| -------- | ------ | ---- | -------- | --------- |
| American | 1021   | B5   | 10:15:00 | scheduled |
| American | 1021   | B12  | 12:15:00 | scheduled |
| American | 1021   | B13  | 14:15:00 | scheduled |

7. List the number of reservations by flight number. Order by reservations in descending order.

* Points: 5

Your results must look like this:

| flight | reservations |
| ------ | ------------ |
| 654    | 15           |
| 3333   | 7            |
| 1021   | 5            |
| 1033   | 5            |
| 3242   | 3            |
| 3456   | 1            |

8. List the average ticket cost for coach by airline and route. Order by AverageCost in descending order.

* Points: 10

Your results must look like this:

| airline  | departAirport | arriveAirport | AverageCost |
| -------- | ------------- | ------------- | ----------- |
| Delta    | ATL           | LAX           | 375.000000  |
| Delta    | DEN           | SFO           | 372.500000  |
| American | LAX           | DEN           | 366.750000  |
| American | ATL           | CLT           | 262.500000  |
| American | DEN           | ATL           | 258.666667  |

9. Which route is the longest?

* Points: 5

Your results must look like this:

| departAirport | arriveAirport | miles |
| ------------- | ------------- | ----- |
| SFO           | CLT           | 2290  |

10. List the top 5 passengers that have flown the most miles. Order by miles.

* Points: 10

Your results must look like this:

| firstName | lastName | miles |
| --------- | -------- | ----- |
| Mick      | Jagger   | 3470  |
| George    | Harrison | 3077  |
| Neil      | Young    | 2800  |
| Peter     | Buck     | 2800  |
| Joe       | Strummer | 1477  |

11. Provide a list of American airline flights ordered by route and arrival date and time. Your results must look like this:

> Hint: String and Date Functions

* Points: 10

Your results must look like this:

| Name     | Route       | Arrive Date | Arrive Time |
| -------- | ----------- | ----------- | ----------- |
| American | ATL --> CLT | 2017-10-30  | 10:15:00    |
| American | ATL --> CLT | 2017-10-30  | 12:15:00    |
| American | ATL --> CLT | 2017-10-30  | 14:15:00    |
| American | DEN --> ATL | 2017-10-01  | 13:30:00    |
| American | DEN --> ATL | 2017-10-30  | 09:30:00    |
| American | DEN --> ATL | 2017-10-30  | 13:30:00    |
| American | LAX --> DEN | 2017-10-25  | 14:30:00    |
| American | LAX --> STL | 2017-10-03  | 14:00:00    |

12. Provide a report that counts the number of reservations and totals the reservation costs (as Revenue) by Airline, flight, and route. Order the report by total revenue in descending order.

* Points: 10

Your results must look like this:

| Airline  | Flight | Route       | Reservation Count | Revenue  |
| -------- | ------ | ----------- | ----------------- | -------- |
| American | 654    | DEN --> ATL | 15                | 11334.99 |
| American | 3333   | LAX --> DEN | 7                 | 4541.00  |
| American | 1021   | ATL --> CLT | 5                 | 4275.01  |
| Delta    | 1033   | DEN --> SFO | 5                 | 3133.00  |
| Delta    | 3242   | ATL --> LAX | 3                 | 1560.00  |
| United   | 3456   | CLT --> CHS | 1                 | 599.00   |

13. List the average cost per reservation by route. Round results down to the dollar.

* Points: 10

Your results must look like this:

| Route       | Avg Revenue |
| ----------- | ----------- |
| ATL --> CLT | 855         |
| DEN --> ATL | 755         |
| LAX --> DEN | 648         |
| DEN --> SFO | 626         |
| CLT --> CHS | 599         |
| ATL --> LAX | 520         |

14. List the average miles per flight by airline.

* Points: 5

Your results must look like this:

| Airline  | Avg Miles Per Flight |
| -------- | -------------------- |
| American | 860.1250             |
| Delta    | 1139.3333            |
| United   | 336.5000             |

15. Which airlines had flights that arrived early?

* Points: 5

Your results must look like this:

| Airline |
| ------- |
| Delta   |
