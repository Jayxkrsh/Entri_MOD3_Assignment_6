use entri_d41;

-- perfoming inner join on table country & persons
SELECT * from Country INNER JOIN Persons ON Country.Id=Persons.Id;

-- perfoming left join on tables country &  persons
SELECT * from Country LEFT JOIN Persons ON Country.Id=Persons.Id;

-- perfoming right join on tables country & persons
SELECT * FROM Country RIGHT JOIN Persons ON Country.Id=Persons.Id;

-- List all distinct country names from both the Country and Persons tables.
SELECT DISTINCT Country_Name
FROM Country
UNION
SELECT DISTINCT Country_Name
FROM Persons
WHERE Country_Id IS NOT NULL;

-- List all country names from both the Country and Persons tables, including duplicates.
SELECT Country_Name
FROM Country
UNION ALL
SELECT Country_Name
FROM Persons
WHERE Country_Id IS NOT NULL;

-- Round the ratings of all persons to the nearest integer in the Persons table.
SELECT Id, FName, Country_Id, Country_name, ROUND(Rating) AS RoundedRating
FROM Persons;




