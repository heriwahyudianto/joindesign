CREATE TABLE `EMPLOYEES` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `Salary` int(11) NOT NULL
);

INSERT INTO `EMPLOYEES` (`ID`, `Name`, `Salary`) VALUES
(1, 'Gavin', 1420),
(2, 'Norie', 2006),
(3, 'Somya', 2210),
(4, 'Waiman', 3000);

CREATE VIEW `nozero` AS SELECT REPLACE(CAST(`Salary` AS CHAR),'0','') AS `Salary` from `EMPLOYEES` ;

SELECT CEILING((SELECT AVG(Salary) FROM EMPLOYEES) - (SELECT AVG(Salary) FROM `nozero`)) AS differentiate