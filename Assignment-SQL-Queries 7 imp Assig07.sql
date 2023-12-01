create database ASSIGN07
use assign07

/*Problem Statement:
Consider yourself to be Sam and you have been given the below tasks to complete using
the Table – STUDIES, SOFTWARE & PROGRAMMER.*/

create table STUDIES(
PNAME VARCHAR(20),
INSTITUTE VARCHAR(20),
COURSE VARCHAR(10),
[COURSE FEE] INT
)
INSERT INTO STUDIES VALUES
('ANAND', 'SABHARI', 'PGDCA', 4500),
('ALTAF', 'COIT', 'DCA', 7200),
('JULIANA', 'BDPS', 'MCA', 22000),
('KAMALA', 'PRAGATHI', 'DCA', 5000),
('MARY', 'SABHARI', 'PGDCA', 4500),
('NELSON', 'PRAGATHI', 'DAP', 6200),
('PATRICK', 'PRAGATHI', 'DCAP', 5200),
('QADIR', 'APPLE', 'HDCA', 14000),
('RAMESH', 'SABHARI', 'PGDCA', 4500),
('REBECCA', 'BRILLIANT', 'DCAP', 11000),
('REMITHA', 'BDPS', 'DCS', 6000),
('REVATHI', 'SABHARI', 'DAP', 5000),
('VIJAYA', 'BDPS', 'DCA', 48000)

SELECT * FROM STUDIES

CREATE TABLE SOFTWARE(
	PNAME VARCHAR(20),
	TITLE VARCHAR(30),
	DEVELOPIN VARCHAR(15),
	SCOST FLOAT,
	DCOST INT,
	SOLD INT
)
INSERT INTO SOFTWARE VALUES
('MARY', 'README', 'CPP', 300, 1200, 84),
('ANAND', 'PARACHUTES', 'BASIC', 399.95, 6000, 43),
('ANAND', 'VIDEO TITLING', 'PASCAL', 7500, 16000, 9),
('JULIANA', 'INVENTORY', 'COBOL', 3000, 3500, 0),
('KAMALA', 'PAYROLL PKG.', 'DBASE', 9000, 20000, 7),
('MARY', 'FINANCIAL ACCT.', 'ORACLE', 18000, 85000, 4),
('MARY', 'CODE GENERATOR', 'C',4500, 20000, 23),
('PATTRICK', 'README', 'CPP', 300, 1200, 84),
('QADIR', 'BOMBS AWAY', 'ASSEMBLY', 750, 3000, 11),
('QADIR', 'VACCINES', 'C', 1900, 3100, 21),
('RAMESH', 'HOTEL MGMT.', 'DBASE', 13000, 35000, 4),
('RAMESH', 'DEAD LEE', 'PASCAL', 599.95, 4500, 73),
('REMITHA', 'PC UTILITIES', 'C', 725, 5000, 51),
('REMITHA', 'TSR HELP PKG.', 'ASSEMBLY', 2500, 6000, 7),
('REVATHI', 'HOSPITAL MGMT.', 'PASCAL', 1100, 75000, 2),
('VIJAYA', 'TSR EDITOR', 'C', 900, 700, 6)
SELECT * FROM SOFTWARE

CREATE TABLE PROGRAMMER(
	PNAME VARCHAR(15),
	DOB DATE,
	DOJ DATE,
	GENDER VARCHAR(2),
	PROF1 VARCHAR(10),
	PROF2 VARCHAR(10),
	SALARY INT
)
INSERT INTO PROGRAMMER VALUES
('ANAND', '12-Apr-66', '21-Apr-92', 'M', 'PASCAL', 'BASIC', 3200),
('ALTAF', '02-Jul-64', '13-Nov-90', 'M', 'CLIPPER', 'COBOL', 2800),
('JULIANA', '31-Jan-60', '21-Apr-90', 'F', 'COBOL', 'DBASE', 3000),
('KAMALA', '30-Oct-68', '02-Jan-92', 'F', 'C', 'DBASE', 2900),
('MARY', '24-Jun-70', '01-Feb-91', 'F', 'CPP', 'ORACLE', 4500),
('NELSON', '11-Sep-85', '11-Oct-89', 'M', 'COBOL', 'DBASE', 2500),
('PATTRICK', '10-Nov-65', '21-Apr-90', 'M', 'PASCAL', 'CLIPPER', 2800),
('QADIR', '31-Aug-65', '21-Apr-91', 'M', 'ASSEMBLY', 'C', 3000),
('RAMESH', '03-May-67', '28-Feb-91', 'M', 'PASCAL', 'DBASE',3200),
('REBECCA', '01-Jan-67', '01-Dec-90' ,'F', 'BASIC', 'COBOL', 2500),
('REMITHA', '19-Apr-70', '20-Apr-93', 'F' ,'C', 'ASSEMBLY', 3600),
('REVATHI', '02-Dec-69', '02-Jan-92', 'F', 'PASCAL', 'BASIC', 3700),
('VIJAYA', '14-Dec-65', '02-May-92', 'F', 'FOXPRO', 'C', 3500)
SELECT * FROM PROGRAMMER

SELECT * FROM STUDIES
SELECT * FROM SOFTWARE
SELECT * FROM PROGRAMMER

--1. Find out the selling cost AVG for packages developed in Pascal.
SELECT AVG(SCOST) FROM SOFTWARE
WHERE DEVELOPIN = 'PASCAL'

--2. Display Names, Ages of all Programmers.
SELECT PNAME,DOB FROM PROGRAMMER

--3. Display the Names of those who have done the DAP Course.
SELECT PNAME FROM STUDIES
WHERE COURSE = 'DAP'

--4. Display the Names and Date of Births of all Programmers Born in January.
SELECT PNAME, DOB
FROM PROGRAMMER
WHERE MONTH(DOB) = 1;

--5. What is the Highest Number of copies sold by a Package?
SELECT MAX(SOLD) FROM SOFTWARE

--6. Display lowest course Fee.
SELECT MIN([COURSE FEE]) FROM STUDIES

--7. How many programmers done the PGDCA Course?
SELECT COUNT(*) FROM STUDIES
WHERE COURSE = 'PGDCA'

--8. How much revenue has been earned thru sales of Packages Developed in C.
SELECT SUM(SOLD * DCOST) AS TOTAL_REVENUE
FROM SOFTWARE
WHERE DEVELOPIN = 'C';


--9. Display the Details of the Software Developed by Ramesh.
SELECT DEVELOPIN FROM SOFTWARE
WHERE PNAME = 'RAMESH'

--10. How many Programmers Studied at Sabhari?
SELECT COUNT(INSTITUTE) FROM STUDIES
WHERE INSTITUTE = 'SABHARI'

--11. Display details of Packages whose sales crossed the 2000 Mark.
SELECT *
FROM SOFTWARE
WHERE SOLD > 2000;


--12. Display the Details of Packages for which Development Cost have been recovered.
SELECT *
FROM SOFTWARE
WHERE SOLD * DCOST >= SCOST;


--13. What is the cost of the costliest software development in Basic?
SELECT MAX(DCOST) AS COSTLIEST_BASIC_SOFTWARE
FROM SOFTWARE
WHERE DEVELOPIN = 'BASIC';


--14. How many Packages Developed in DBASE?
SELECT SALARY FROM PROGRAMMER
WHERE PROF2 = 'DBASE'

--15. How many programmers studied in Pragathi?
SELECT COUNT(INSTITUTE) FROM STUDIES
WHERE INSTITUTE = 'PRAGATHI'

--16. How many Programmers Paid 5000 to 10000 for their course?
SELECT COUNT(*) AS COUNT_PROGRAMMERS_5000_TO_10000
FROM STUDIES
WHERE [COURSE FEE] BETWEEN 5000 AND 10000;


--17. What is AVG Course Fee
SELECT AVG([COURSE FEE]) FROM STUDIES

--18. Display the details of the Programmers Knowing C.
SELECT *
FROM PROGRAMMER
WHERE PROF1 = 'C' OR PROF2 = 'C';

--19. How many Programmers know either COBOL or PASCAL.
SELECT COUNT(PROF1) FROM PROGRAMMER
WHERE PROF1 = 'COBOL' OR PROF1 = 'PASCAL'

--20. How many Programmers Don’t know PASCAL and C
SELECT COUNT(PROF1) FROM PROGRAMMER
WHERE PROF1 != 'PASCAL' AND PROF1 != 'C'

--21. How old is the Oldest Male Programmer.
SELECT MAX(DOB) FROM PROGRAMMER
WHERE GENDER = 'M'

--22. What is the AVG age of Female Programmers?
SELECT AVG(DATEDIFF(YEAR, DOB, '2023-07-24')) AS AVG_AGE_FEMALE_PROGRAMMERS
FROM PROGRAMMER
WHERE GENDER = 'F';

--23. Calculate the Experience in Years for each Programmer and Display with their names in Descending order.
SELECT PNAME,
       DATEDIFF(YEAR, DOJ, '2023-07-24') AS EXPERIENCE_IN_YEARS
FROM PROGRAMMER
ORDER BY EXPERIENCE_IN_YEARS DESC;


--24. Who are the Programmers who celebrate their Birthday’s During the Current Month?
SELECT PNAME, DOB
FROM PROGRAMMER
WHERE MONTH(DOB) = 7 AND DAY(DOB) >= 24
   OR MONTH(DOB) = 8 AND DAY(DOB) <= 23;


--25. How many Female Programmers are there?
SELECT COUNT(GENDER) FROM PROGRAMMER
WHERE GENDER = 'F'

--26. What are the Languages studied by Male Programmers.
SELECT PROF1, PROF2 FROM PROGRAMMER
WHERE GENDER = 'M'

--27. What is the AVG Salary?
SELECT AVG(SALARY) FROM PROGRAMMER

--28. How many people draw salary 2000 to 4000?
SELECT COUNT(*) AS COUNT_PEOPLE_2000_TO_4000
FROM PROGRAMMER
WHERE SALARY BETWEEN 2000 AND 4000;


--29. Display the details of those who don’t know Clipper, COBOL or PASCAL.
SELECT *
FROM PROGRAMMER
WHERE PROF1 NOT IN ('Clipper', 'COBOL', 'PASCAL')
  AND PROF2 NOT IN ('Clipper', 'COBOL', 'PASCAL');


--30. Display the Cost of Package Developed By each Programmer.
SELECT PNAME, DCOST AS PACKAGE_COST
FROM SOFTWARE;

--31. Display the sales values of the Packages Developed by the each Programmer.
SELECT PNAME, SOLD * DCOST AS SALES_VALUE
FROM SOFTWARE;


--32. Display the Number of Packages sold by Each Programmer.
SELECT DEVELOPIN, COUNT(*)SOLD FROM SOFTWARE
GROUP BY DEVELOPIN, SOLD


--33. Display the sales cost of the packages Developed by each Programmer Language wise.
SELECT PNAME, DEVELOPIN, SUM(SOLD * DCOST) AS SALES_COST
FROM SOFTWARE
GROUP BY PNAME, DEVELOPIN;


--34. Display each language name with AVG Development Cost, AVG Selling Cost and AVG Price per Copy.
SELECT DEVELOPIN AS LANGUAGE_NAME,
       AVG(DCOST) AS AVG_DEVELOPMENT_COST,
       AVG(SCOST) AS AVG_SELLING_COST,
       AVG(SCOST/ SOLD) AS AVG_PRICE_PER_COPY
FROM SOFTWARE
GROUP BY DEVELOPIN;


--35. Display each programmer’s name, costliest and cheapest Packages Developed by him or her.
SELECT PNAME AS PROGRAMMER_NAME,
       MAX(SCOST) OVER (PARTITION BY PNAME) AS COSTLIEST_PACKAGE,
       MIN(SCOST) OVER (PARTITION BY PNAME) AS CHEAPEST_PACKAGE
FROM SOFTWARE;


--36. Display each institute name with number of Courses, Average Cost per Course.
SELECT INSTITUTE,
       COUNT(COURSE) AS NUMBER_OF_COURSES,
       AVG([COURSE FEE]) AS AVERAGE_COST_PER_COURSE
FROM STUDIES
GROUP BY INSTITUTE;


--37. Display each institute Name with Number of Students.
SELECT INSTITUTE, COUNT(*)PNAME FROM STUDIES

--38. Display Names of Male and Female Programmers. Gender also.
SELECT PNAME, GENDER FROM PROGRAMMER
WHERE GENDER = 'M' OR GENDER = 'F'

--39. Display the Name of Programmers and Their Packages.
SELECT PNAME, SALARY FROM PROGRAMMER

--40. Display the Number of Packages in Each Language Except C and C++.
SELECT DEVELOPIN AS LANGUAGE,
       COUNT(*) AS NUMBER_OF_PACKAGES
FROM SOFTWARE
WHERE DEVELOPIN NOT IN ('C', 'C++')
GROUP BY DEVELOPIN;


--41. Display the Number of Packages in Each Language for which Development Cost is less than 1000.
SELECT DEVELOPIN AS LANGUAGE,
       COUNT(*) AS NUMBER_OF_PACKAGES
FROM SOFTWARE
WHERE DCOST < 1000
GROUP BY DEVELOPIN;

--42. Display AVG Difference between SCOST, DCOST for Each Package.
SELECT PNAME,
       TITLE,
       SCOST - DCOST AS DIFFERENCE,
       AVG(SCOST - DCOST) OVER (PARTITION BY PNAME, TITLE) AS AVG_DIFFERENCE
FROM SOFTWARE;


--43. Display the total SCOST, DCOST and amount to Be Recovered for each Programmer for Those Whose Cost has not yet been Recovered.
SELECT PNAME,
       SUM(SCOST) AS TOTAL_SCOST,
       SUM(DCOST) AS TOTAL_DCOST,
       SUM(SCOST - DCOST) AS AMOUNT_TO_BE_RECOVERED
FROM SOFTWARE
GROUP BY PNAME
HAVING SUM(SCOST) > SUM(DCOST);


--44. Display Highest, Lowest and Average Salaries for those earning more than 2000.
SELECT MAX(SALARY) AS HIGHEST_SALARY,
       MIN(SALARY) AS LOWEST_SALARY,
       AVG(SALARY) AS AVERAGE_SALARY
FROM PROGRAMMER
WHERE SALARY > 2000;


--45. Who is the Highest Paid C Programmers?
SELECT PNAME
FROM PROGRAMMER
WHERE PROF1 = 'C' OR PROF2 = 'C'
ORDER BY SALARY DESC



--46. Who is the Highest Paid Female COBOL Programmer?
SELECT PNAME
FROM PROGRAMMER
WHERE GENDER = 'F' AND (PROF1 = 'COBOL' OR PROF2 = 'COBOL')
ORDER BY SALARY DESC



--47. Display the names of the highest paid programmers for each Language.
WITH RankedProgrammers AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY PROF1 ORDER BY SALARY DESC) AS Rank1,
         ROW_NUMBER() OVER (PARTITION BY PROF2 ORDER BY SALARY DESC) AS Rank2
  FROM PROGRAMMER
)
SELECT PNAME, SALARY, PROF1 AS LANGUAGE
FROM RankedProgrammers
WHERE Rank1 = 1 OR Rank2 = 1;

--48. Who is the least experienced Programmer.
SELECT PNAME, DOJ
FROM PROGRAMMER
ORDER BY DOJ ASC


--49. Who is the most experienced male programmer knowing PASCAL.
SELECT PNAME, DOJ
FROM PROGRAMMER
WHERE GENDER = 'M' AND (PROF1 = 'PASCAL' OR PROF2 = 'PASCAL')
ORDER BY DOJ DESC

--50. Which Language is known by only one Programmer?
SELECT PROF1 AS LANGUAGE
FROM PROGRAMMER
GROUP BY PROF1
HAVING COUNT(DISTINCT PNAME) = 1
UNION
SELECT PROF2 AS LANGUAGE
FROM PROGRAMMER
GROUP BY PROF2
HAVING COUNT(DISTINCT PNAME) = 1;


--51. Who is the Above Programmer Referred in 50?
SELECT PNAME, PROF1 AS LANGUAGE
FROM PROGRAMMER
GROUP BY PNAME, PROF1
HAVING COUNT(DISTINCT PNAME) = 1
UNION
SELECT PNAME, PROF2 AS LANGUAGE
FROM PROGRAMMER
GROUP BY PNAME, PROF2
HAVING COUNT(DISTINCT PNAME) = 1;


--52. Who is the Youngest Programmer knowing DBASE?
SELECT PNAME, DOB
FROM PROGRAMMER
WHERE PROF1 = 'DBASE' OR PROF2 = 'DBASE'
ORDER BY DOB ASC


--53. Which Female Programmer earning more than 3000 does not know C, C++, ORACLE or DBASE?
SELECT PNAME, SALARY
FROM PROGRAMMER
WHERE GENDER = 'F'
  AND SALARY > 3000
  AND PROF1 NOT IN ('C', 'C++', 'ORACLE', 'DBASE')
  AND PROF2 NOT IN ('C', 'C++', 'ORACLE', 'DBASE');


--54. Which Institute has most number of Students?
SELECT INSTITUTE, COUNT(PNAME) AS NUMBER_OF_STUDENTS
FROM STUDIES
GROUP BY INSTITUTE
ORDER BY COUNT(PNAME) DESC


--55. What is the Costliest course?
SELECT COURSE, [COURSE FEE] FROM STUDIES
ORDER BY [COURSE FEE] DESC

--56. Which course has been done by the most of the Students?
SELECT COURSE, COUNT(PNAME) AS NUMBER_OF_STUDENTS
FROM STUDIES
GROUP BY COURSE
ORDER BY COUNT(PNAME) DESC

SELECT TOP 1 COURSE, COUNT(PNAME) AS NUMBER_OF_STUDENTS
FROM STUDIES
GROUP BY COURSE
ORDER BY COUNT(PNAME) DESC;


--57. Which Institute conducts costliest course.
SELECT TOP 1 S.INSTITUTE, MAX(S.[COURSE FEE]) AS COSTLIEST_COURSE_FEE
FROM STUDIES S
JOIN STUDIES  ON S.COURSE = S.COURSE
GROUP BY S.INSTITUTE
ORDER BY MAX(S.[COURSE FEE]) DESC;


--58. Display the name of the Institute and Course, which has below AVG course fee.
SELECT INSTITUTE, COURSE, AVG([COURSE FEE]) FROM STUDIES
GROUP BY INSTITUTE, COURSE 

SELECT S.INSTITUTE, S.COURSE, S.[COURSE FEE]
FROM STUDIES S
WHERE S.[COURSE FEE] < (SELECT AVG([COURSE FEE]) FROM STUDIES);


--59. Display the names of the courses whose fees are within 1000 (+ or -) of the Average Fee,
SELECT COURSE
FROM STUDIES
WHERE [COURSE FEE] BETWEEN (SELECT AVG([COURSE FEE]) - 1000 FROM STUDIES) AND (SELECT AVG([COURSE FEE]) + 1000 FROM STUDIES);


--60. Which package has the Highest Development cost?
SELECT TOP 1 PNAME, SCOST AS DEVELOPMENT_COST
FROM SOFTWARE
ORDER BY SCOST DESC;

--61. Which course has below AVG number of Students? --**--

SELECT COURSE
FROM STUDIES
GROUP BY COURSE
HAVING COUNT(PNAME) < (SELECT AVG(COUNT(PNAME)) FROM STUDIES GROUP BY COURSE);

WITH CourseStudentCounts AS (
    SELECT COURSE, COUNT(PNAME) AS NUMBER_OF_STUDENTS
    FROM STUDIES
    GROUP BY COURSE
),
AverageStudentCount AS (
    SELECT AVG(NUMBER_OF_STUDENTS) AS AVG_STUDENT_COUNT
    FROM CourseStudentCounts
)
SELECT CSC.COURSE, CSC.NUMBER_OF_STUDENTS
FROM CourseStudentCounts CSC
JOIN AverageStudentCount ASCC ON CSC.NUMBER_OF_STUDENTS < ASCC.AVG_STUDENT_COUNT;


--62. Which Package has the lowest selling cost?
SELECT TOP 1 PNAME, SOLD AS SELLING_COST
FROM SOFTWARE
ORDER BY SOLD ASC;

--63. Who Developed the Package that has sold the least number of copies?
SELECT TOP 1 PNAME
FROM SOFTWARE
ORDER BY SOLD ASC;

--64. Which language has used to develop the package, which has the highest sales amount?
SELECT TOP 1 DEVELOPIN
FROM SOFTWARE
ORDER BY SOLD * DCOST DESC;

--65. How many copies of package that has the least difference between development and selling cost where sold.
SELECT TOP 1 SOLD
FROM SOFTWARE
ORDER BY ABS(SCOST - DCOST) ASC;

--66. Which is the costliest package developed in PASCAL.
SELECT TOP 1 DEVELOPIN,SCOST FROM SOFTWARE
WHERE DEVELOPIN = 'PASCAL'
ORDER BY SCOST DESC;


--67. Which language was used to develop the most number of Packages.
SELECT TOP 1 DEVELOPIN, COUNT(*) FROM SOFTWARE
GROUP BY DEVELOPIN
ORDER BY COUNT(*) DESC


--68. Which programmer has developed the highest number of Packages?

SELECT TOP 1 PNAME, COUNT(*) FROM SOFTWARE
GROUP BY PNAME
ORDER BY COUNT(*) DESC

--69. Who is the Author of the Costliest Package?
SELECT TOP 1 PNAME
FROM SOFTWARE
ORDER BY SCOST DESC;

--70. Display the names of the packages, which have sold less than the AVG number of copies.
SELECT PNAME
FROM SOFTWARE
WHERE SOLD < (SELECT AVG(SOLD) FROM SOFTWARE);

--71. Who are the authors of the Packages, which have recovered more than double the Development cost?
SELECT PNAME FROM SOFTWARE
WHERE SOLD * DCOST > 2 * SCOST;


--72. Display the programmer Name and the cheapest packages developed by them in each language.
SELECT PNAME , DEVELOPIN, SCOST FROM SOFTWARE
WHERE DEVELOPIN = DEVELOPIN
ORDER BY SCOST ASC

WITH CheapestPackages AS (
    SELECT PNAME, TITLE, DEVELOPIN, SCOST,
           ROW_NUMBER() OVER (PARTITION BY DEVELOPIN ORDER BY SCOST) AS Rank
    FROM SOFTWARE
)
SELECT PNAME AS ProgrammerName, TITLE AS CheapestPackage, DEVELOPIN AS Language
FROM CheapestPackages
WHERE Rank = 1;

--73. Display the language used by each programmer to develop the Highest Selling and Lowest-selling package.

WITH RankedPackages AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY PNAME ORDER BY SOLD DESC) AS HighestRank,
           ROW_NUMBER() OVER (PARTITION BY PNAME ORDER BY SOLD ASC) AS LowestRank
    FROM SOFTWARE
)
SELECT PNAME AS ProgrammerName,
       MAX(CASE WHEN HighestRank = 1 THEN DEVELOPIN END) AS LanguageHighestSelling,
       MAX(CASE WHEN LowestRank = 1 THEN DEVELOPIN END) AS LanguageLowestSelling
FROM RankedPackages
GROUP BY PNAME;


--74. Who is the youngest male Programmer born in 1965?
SELECT PNAME, DOB FROM PROGRAMMER
WHERE YEAR(DOB) = '1965' AND GENDER = 'M'

SELECT TOP 1 PNAME
FROM PROGRAMMER
WHERE GENDER = 'M' AND YEAR(DOB) = 1965
ORDER BY DOB ASC;

--75. Who is the oldest Female Programmer who joined in 1992?
SELECT PNAME, DOB FROM PROGRAMMER
WHERE GENDER = 'F' AND YEAR(DOJ) = 1992

SELECT TOP 1 PNAME, DOB FROM PROGRAMMER
WHERE GENDER = 'F' AND YEAR(DOJ) = 1992

--76. In which year was the most number of Programmers born.
SELECT COUNT(*) PNAME, YEAR(DOB) FROM PROGRAMMER
GROUP BY YEAR(DOB)
ORDER BY COUNT(*) DESC

SELECT YEAR(DOB) AS BirthYear, COUNT(*) AS NumberOfProgrammers
FROM PROGRAMMER
GROUP BY YEAR(DOB)
ORDER BY COUNT(*) DESC


--77. In which month did most number of programmers join?
SELECT COUNT(*) PNAME, MONTH(DOJ) AS NumberOfProgrammers FROM PROGRAMMER
GROUP BY MONTH(DOJ)
ORDER BY COUNT(*) DESC

--78. In which language are most of the programmer’s proficient.
SELECT TOP 1 PROF1 AS Language, COUNT(*) AS NumberOfProgrammers
FROM PROGRAMMER
GROUP BY PROF1
ORDER BY COUNT(*) DESC


--79. Who are the male programmers earning below the AVG salary of Female Programmers?
SELECT PNAME, SALARY, GENDER FROM PROGRAMMER
WHERE GENDER = 'M' AND SALARY < (SELECT AVG(SALARY) FROM PROGRAMMER WHERE GENDER = 'F');


--80. Who are the Female Programmers earning more than the Highest Paid?
SELECT PNAME, SALARY, GENDER FROM PROGRAMMER
WHERE GENDER = 'F' AND SALARY > (SELECT AVG(SALARY) FROM PROGRAMMER);

--81. Which language has been stated as the proficiency by most of the Programmers?
SELECT TOP 1 PROF1 AS Language, COUNT(*) AS NumberOfProgrammers
FROM PROGRAMMER
GROUP BY PROF1
ORDER BY COUNT(*) DESC

--82. Display the details of those who are drawing the same salary.
SELECT PNAME, SALARY FROM PROGRAMMER
WHERE SALARY = SALARY

SELECT PNAME, DOB, DOJ, GENDER, PROF1, PROF2, SALARY
FROM PROGRAMMER
GROUP BY PNAME, DOB, DOJ, GENDER, PROF1, PROF2, SALARY
HAVING COUNT(*) > 1;


--83. Display the details of the Software Developed by the Male Programmers Earning More than 3000/-.
SELECT S.PNAME, S.TITLE, S.DEVELOPIN, S.SCOST, S.DCOST, S.SOLD
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'M' AND P.SALARY > 3000;

--84. Display the details of the packages developed in Pascal by the Female Programmers.
SELECT S.TITLE, S.DEVELOPIN, S.SCOST, S.DCOST, S.SOLD, P.PNAME, P.DOB, P.DOJ, P.GENDER, P.PROF1, P.PROF2, P.SALARY
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'F' AND S.DEVELOPIN = 'PASCAL';

--85. Display the details of the Programmers who joined before 1990.
SELECT PNAME, DOB, DOJ, GENDER, PROF1, PROF2, SALARY
FROM PROGRAMMER
WHERE DOJ < '1990-01-01';

--86. Display the details of the Software Developed in C By female programmers of Pragathi. --***--
SELECT S.PNAME, S.INSTITUTE ,S.COURSE, S.[COURSE FEE],
	   ST.TITLE, ST.DEVELOPIN, ST.SCOST, ST.DCOST, ST.SOLD,
	   P.DOB, P.DOJ, P.GENDER, P.PROF1, P.PROF2, P.SALARY
FROM STUDIES S
INNER JOIN SOFTWARE ST ON S.PNAME = ST.PNAME
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE S.INSTITUTE = 'Pragathi' AND ST.DEVELOPIN = 'C' AND P.GENDER = 'F'

SELECT S.* FROM PROGRAMMER P
JOIN SOFTWARE S ON P.PNAME = S.PNAME
WHERE P.GENDER = 'F' AND P.PROF1 = 'C' AND P.PROF2 IS NULL AND P.PNAME IN (
    SELECT PNAME
    FROM STUDIES
    WHERE INSTITUTE = 'PRAGATHI'
);

--87. Display the number of packages, No. of Copies Sold and sales value of each programmer institute wise.
SELECT S.INSTITUTE,
       S.PNAME,
       COUNT(ST.TITLE) AS No_Of_Packages,
       SUM(ST.SOLD) AS No_Of_Copies_Sold,
       SUM(ST.SCOST * ST.SOLD) AS Sales_Value
FROM STUDIES S
LEFT JOIN SOFTWARE ST ON S.PNAME = ST.PNAME
LEFT JOIN PROGRAMMER P  ON S.PNAME = P.PNAME
GROUP BY S.INSTITUTE, S.PNAME;

/* 88. Display the details of the software developed in DBASE by Male Programmers, who
       belong to the institute in which most number of Programmers studied.*/

SELECT ST.*
FROM SOFTWARE ST
JOIN PROGRAMMER P ON ST.PNAME = P.PNAME
JOIN (
    SELECT TOP 1 INSTITUTE
    FROM STUDIES
    GROUP BY INSTITUTE
    ORDER BY COUNT(*) DESC
) MostStudiedInstitute ON P.PNAME = ST.PNAME
WHERE P.GENDER = 'M'
AND P.PROF1 = 'DBASE';



/* 89. Display the details of the software Developed by the male programmers Born
       before 1965 and female programmers born after 1975.*/
SELECT S.*
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'M' AND P.DOB < '1965-01-01'
UNION
SELECT S.*
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'F' AND P.DOB > '1975-12-31';


/* 90. Display the details of the software that has developed in the language which is
       neither the first nor the second proficiency of the programmers.*/
SELECT S.*
FROM SOFTWARE S
WHERE S.DEVELOPIN NOT IN (
    SELECT PROF1 FROM PROGRAMMER
    UNION
    SELECT PROF2 FROM PROGRAMMER
);

--91. Display the details of the software developed by the male students of Sabhari.
SELECT S.*
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
JOIN STUDIES ST ON P.PNAME = ST.PNAME
WHERE P.GENDER = 'M' AND ST.INSTITUTE = 'SABHARI';

--92. Display the names of the programmers who have not developed any packages.
SELECT P.PNAME
FROM PROGRAMMER P
LEFT JOIN SOFTWARE S ON P.PNAME = S.PNAME
WHERE S.PNAME IS NULL;

--93. What is the total cost of the Software developed by the programmers of Apple?
SELECT SUM(ST.SCOST) AS Total_Cost
FROM SOFTWARE ST
JOIN PROGRAMMER P ON ST.PNAME = P.PNAME
JOIN STUDIES S ON P.PNAME = S.PNAME
WHERE S.INSTITUTE = 'APPLE';


--94. Who are the programmers who joined on the same day?
SELECT P.PNAME, P.DOJ
FROM PROGRAMMER P
WHERE DAY(DOJ) = DAY(DOJ)
ORDER BY DOJ DESC

SELECT P1.PNAME, P1.DOJ
FROM PROGRAMMER P1
JOIN PROGRAMMER P2 ON P1.DOJ = P2.DOJ AND P1.PNAME <> P2.PNAME
ORDER BY P1.DOJ;

--95. Who are the programmers who have the same Prof2?
SELECT PNAME, PROF2 FROM PROGRAMMER
WHERE PROF2 = PROF2

SELECT P1.PNAME, P1.PROF2
FROM PROGRAMMER P1
JOIN PROGRAMMER P2 ON P1.PROF2 = P2.PROF2 AND P1.PNAME <> P2.PNAME;


--96. Display the total sales value of the software, institute wise.
SELECT S.INSTITUTE, SUM(ST.SCOST * ST.SOLD) AS Total_Sales_Value
FROM SOFTWARE ST
JOIN PROGRAMMER P ON ST.PNAME = P.PNAME
JOIN STUDIES S ON P.PNAME = S.PNAME
GROUP BY S.INSTITUTE;


--97. In which institute does the person who developed the costliest package studied.
SELECT ST.INSTITUTE
FROM SOFTWARE S
JOIN PROGRAMMER P ON S.PNAME = P.PNAME
JOIN STUDIES ST ON P.PNAME = ST.PNAME
WHERE S.SCOST = (
    SELECT MAX(SCOST) FROM SOFTWARE
);

--98. Which language listed in prof1, prof2 has not been used to develop any package.
SELECT DISTINCT Proficiency
FROM (
    SELECT PROF1 AS Proficiency FROM PROGRAMMER
    UNION
    SELECT PROF2 AS Proficiency FROM PROGRAMMER
) Proficiencies
WHERE Proficiency NOT IN (
    SELECT DISTINCT DEVELOPIN FROM SOFTWARE
);

--99. How much does the person who developed the highest selling package earn and what course did HE/SHE undergo.
SELECT P.PNAME, P.SALARY, ST.COURSE
FROM PROGRAMMER P
JOIN (
    SELECT TOP 1 S.PNAME, S.SOLD
    FROM SOFTWARE S
    ORDER BY S.SOLD DESC
) HighestSellingPackage ON P.PNAME = HighestSellingPackage.PNAME
JOIN STUDIES ST ON P.PNAME = ST.PNAME;

--100. What is the AVG salary for those whose software sales is more than 50,000/-.
SELECT AVG(P.SALARY) AS AvgSalary
FROM PROGRAMMER P
WHERE P.PNAME IN (
    SELECT S.PNAME
    FROM SOFTWARE S
    WHERE S.SOLD > 50000
);


--101. How many packages were developed by students, who studied in institute that charge the lowest course fee?
SELECT COUNT(*) AS NumPackagesDeveloped   -----***************---???
FROM SOFTWARE ST
JOIN PROGRAMMER P ON ST.PNAME = P.PNAME
JOIN (
    SELECT INSTITUTE, MIN([COURSE FEE]) AS MinCourseFee
    FROM STUDIES S 
    GROUP BY INSTITUTE
) LowestFeeInstitute ON S.INSTITUTE = LowestFeeInstitute.INSTITUTE
JOIN STUDIES S ON P.PNAME = S.PNAME
WHERE S.[COURSE FEE] = LowestFeeInstitute.MinCourseFee;

--102. How many packages were developed by the person who developed the cheapest package, where did HE/SHE study?
SELECT P.PNAME, COUNT(*) AS NumPackagesDeveloped, S.INSTITUTE
FROM SOFTWARE ST
JOIN PROGRAMMER P ON ST.PNAME = P.PNAME
JOIN STUDIES S ON P.PNAME = S.PNAME
WHERE ST.SCOST = (
    SELECT MIN(SCOST) FROM SOFTWARE
)
GROUP BY P.PNAME, S.INSTITUTE;


--103. How many packages were developed by the female programmers earning more than the highest paid male programmer?
SELECT COUNT(*) AS NumPackagesDeveloped
FROM SOFTWARE ST
JOIN (
    SELECT MAX(SALARY) AS MaxSalary FROM PROGRAMMER WHERE GENDER = 'M'
) MaleMaxSalary ON 1=1
JOIN PROGRAMMER P ON ST.PNAME = P.PNAME
WHERE P.GENDER = 'F' AND P.SALARY > MaleMaxSalary.MaxSalary;


--104. How many packages are developed by the most experienced programmer form BDPS.
SELECT COUNT(*) AS NumPackagesDeveloped
FROM SOFTWARE ST
JOIN PROGRAMMER P ON ST.PNAME = P.PNAME
JOIN STUDIES S ON P.PNAME = S.PNAME
WHERE S.INSTITUTE = 'BDPS' AND P.DOB = (
    SELECT MIN(DOB) 
    FROM PROGRAMMER 
    WHERE P.PNAME IN (
        SELECT P.PNAME 
        FROM PROGRAMMER P
        JOIN STUDIES ST ON P.PNAME = ST.PNAME 
        WHERE ST.INSTITUTE = 'BDPS'
    )
);

--105. List the programmers (form the software table) and the institutes they studied.
SELECT P.PNAME AS ProgrammerName, S.INSTITUTE AS InstituteStudied
FROM SOFTWARE ST
JOIN PROGRAMMER P ON ST.PNAME = P.PNAME
JOIN STUDIES S ON P.PNAME = S.PNAME;


--106. List each PROF with the number of Programmers having that PROF and the number of the packages in that PROF.
SELECT P.PROF1 AS Proficiency,
       COUNT(DISTINCT P.PNAME) AS NumProgrammers,
       COUNT(ST.TITLE) AS NumPackages
FROM PROGRAMMER P
LEFT JOIN STUDIES S ON P.PNAME = S.PNAME
LEFT JOIN SOFTWARE ST ON P.PNAME = ST.PNAME
GROUP BY P.PROF1;

--107. List the programmer names (from the programmer table) and No. Of Packages each has developed.
SELECT P.PNAME AS ProgrammerName, COUNT(ST.TITLE) AS NumPackagesDeveloped
FROM PROGRAMMER P
LEFT JOIN SOFTWARE ST ON P.PNAME = ST.PNAME
GROUP BY P.PNAME;
