1) SELECT DISTINCT(departAirport) AS Airports from flight;

2) SELECT a.name, flightNumber, scheduledDepartDateTime, arriveAirport, status FROM flight JOIN airline a  WHERE departAirport = 'SFO' AND status = 'delayed' AND a.name = 'Delta';

3) SELECT DISTINCT(departAirport) as Cities from flight WHERE airlineID = 1;

4) SELECT DISTINCT(a.name) as Airline FROM flight JOIN airline a WHERE departAirport = 'ATL' ORDER BY name LIMIT 2;

5)

6)

7)

8)

9) SELECT departAirport, arriveAirport, miles FROM flight ORDER BY miles DESC LIMIT 1;

10)

11)

12)

13)

14)

15) SELECT a.name AS Airline FROM flight JOIN airline a WHERE actualArriveDateTime < scheduledArriveDateTime AND name = 'Delta' ORDER BY actualArriveDateTime LIMIT 1;
