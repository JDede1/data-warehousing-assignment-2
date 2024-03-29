-- Question 1: 
CREATE DATABASE Worker;

SHOW DATABASES;

-- Question 2
CREATE TABLE Worker.Department (
    DepartmentID TINYINT NOT NULL,
    DepartmentNm CHAR(30) NOT NULL,
    PRIMARY KEY (DepartmentID)
);

INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (1, 'Research & Development');
INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (2, 'Production');
INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (3, 'IT Support');
INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (4, 'Operations');
INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (5, 'Customer Service');
INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (6, 'Purchasing');
INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (7, 'Sales & Marketing');
INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (8, 'Human Resource Management');
INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (9, 'Accounting and Finance');
INSERT INTO Worker.Department (DepartmentID, DepartmentNm) VALUES (10, 'Legal');

SELECT * FROM Worker.Department ORDER BY DepartmentID;

-- Question 3
CREATE TABLE Worker.Employee (
    EmployeeID INTEGER NOT NULL,
    DepartmentID TINYINT NOT NULL,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Address VARCHAR(50),
    PhoneNumberTxt VARCHAR(15),
    HireDate DATE NOT NULL,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Worker.Department(DepartmentID)
);

INSERT INTO Worker.Employee (EmployeeID, DepartmentID, FirstName, LastName, Address, PhoneNumberTxt, HireDate)
VALUES (1, 2, 'Andy', 'Wong', '345 South Street', '(603) 555-6880', '2001-01-15');

INSERT INTO Worker.Employee (EmployeeID, DepartmentID, FirstName, LastName, Address, PhoneNumberTxt, HireDate)
VALUES (3, 3, 'Vivek', 'Pandey', '15 Mineral Drive', '(603) 555-4420', '2003-11-15');

INSERT INTO Worker.Employee (EmployeeID, DepartmentID, FirstName, LastName, Address, PhoneNumberTxt, HireDate)
VALUES (5, 8, 'Kathy', 'Cooper', '15 Hatter Drive', '(212) 555-9630', '2011-11-18');

INSERT INTO Worker.Employee (EmployeeID, DepartmentID, FirstName, LastName, Address, PhoneNumberTxt, HireDate)
VALUES (2, 1, 'John', 'Wilson', '560 Broadway', '(518) 555-6690', '2017-03-19');

INSERT INTO Worker.Employee (EmployeeID, DepartmentID, FirstName, LastName, Address, PhoneNumberTxt, HireDate)
VALUES (4, 7, 'Nola', 'Davis', '15 Long Ave', '(478) 555-8822', '2016-03-23');

INSERT INTO Worker.Employee (EmployeeID, DepartmentID, FirstName, LastName, Address, PhoneNumberTxt, HireDate)
VALUES (6, 9, 'Tom', 'Harper', '64 Highland Street', '(212) 555-7755', '2010-04-11');

SELECT * FROM Worker.Employee ORDER BY EmployeeID;

-- Question 4
CREATE TABLE Worker.Equipment (
    EquipmentID INTEGER NOT NULL,
    EquipmentName VARCHAR(30) NOT NULL,
    EquipmentCostAmount DECIMAL(13,2),
    PRIMARY KEY (EquipmentID)
);

INSERT INTO Worker.Equipment (EquipmentID, EquipmentName, EquipmentCostAmount)
VALUES (1, 'Notebook Computers', NULL);

INSERT INTO Worker.Equipment (EquipmentID, EquipmentName, EquipmentCostAmount)
VALUES (2, 'Headsets', NULL);

INSERT INTO Worker.Equipment (EquipmentID, EquipmentName, EquipmentCostAmount)
VALUES (3, 'Computer Monitor', NULL);

SELECT * FROM Worker.Equipment ORDER BY EquipmentID;

-- Question 5
CREATE TABLE Worker.EmployeeEquipment (
    EmployeeID INTEGER NOT NULL,
    EquipmentID INTEGER NOT NULL,
    PRIMARY KEY (EmployeeID, EquipmentID),
    FOREIGN KEY (EmployeeID) REFERENCES Worker.Employee(EmployeeID),
    FOREIGN KEY (EquipmentID) REFERENCES Worker.Equipment(EquipmentID)
);

SHOW CREATE TABLE Worker.EmployeeEquipment;

-- Equipment for Andy Wong
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (1, 1); -- Notebook Computers

-- Equipment for Vivek Pandey
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (3, 1); -- Notebook Computers
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (3, 2); -- Headsets
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (3, 3); -- Computer Monitor

-- Equipment for Kathy Cooper
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (5, 1); -- Notebook Computers
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (5, 2); -- Headsets
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (5, 3); -- Computer Monitor

-- Equipment for John Wilson
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (2, 1); -- Notebook Computers
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (2, 3); -- Computer Monitor

-- Equipment for Nola Davis
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (4, 1); -- Notebook Computers
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (4, 2); -- Headsets

-- Equipment for Tom Harper
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (6, 1); -- Notebook Computers
INSERT INTO Worker.EmployeeEquipment (EmployeeID, EquipmentID) VALUES (6, 3); -- Computer Monitor

SELECT * FROM Worker.EmployeeEquipment ORDER BY EmployeeID, EquipmentID;

-- Question 6
CREATE TABLE Worker.Training (
    TrainingID INTEGER NOT NULL,
    TrainingName VARCHAR(50) NOT NULL,
    PRIMARY KEY (TrainingID)
);

SHOW CREATE TABLE Worker.Training;

INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (1, 'COVID-19 Awareness and Protection Training');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (2, 'Code of Conduct Training');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (3, 'Safety Training');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (4, 'Intro to Python');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (5, 'Machine Learning');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (6, 'Microsoft Certifications');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (7, 'Security and Privacy');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (8, 'Product Knowledge');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (9, 'Sales Skills');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (10, 'Employee Relations');
INSERT INTO Worker.Training (TrainingID, TrainingName) VALUES (11, 'Travel and Expense Management');

SELECT * FROM Worker.Training ORDER BY TrainingID;

-- Question 7
CREATE TABLE Worker.EmployeeTraining (
    EmployeeID INTEGER NOT NULL,
    TrainingID INTEGER NOT NULL,
    PRIMARY KEY (EmployeeID, TrainingID),
    FOREIGN KEY (EmployeeID) REFERENCES Worker.Employee(EmployeeID),
    FOREIGN KEY (TrainingID) REFERENCES Worker.Training(TrainingID)
);

SHOW CREATE TABLE Worker.EmployeeTraining;

-- Training for Andy Wong
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (1, 2); -- Code of Conduct Training
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (1, 3); -- Safety Training

-- Training for Vivek Pandey
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (3, 2); -- Code of Conduct Training
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (3, 6); -- Microsoft Certifications
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (3, 7); -- Security and Privacy

-- Training for Kathy Cooper
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (5, 2); -- Code of Conduct Training
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (5, 10); -- Employee Relations

-- Training for John Wilson
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (2, 2); -- Code of Conduct Training
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (2, 4); -- Intro to Python
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (2, 5); -- Machine Learning

-- Training for Nola Davis
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (4, 2); -- Code of Conduct Training
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (4, 8); -- Product Knowledge
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (4, 9); -- Sales Skills

-- Training for Tom Harper
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (6, 2); -- Code of Conduct Training
INSERT INTO Worker.EmployeeTraining (EmployeeID, TrainingID) VALUES (6, 11); -- Travel and Expense Management

SELECT * FROM Worker.EmployeeTraining ORDER BY EmployeeID, TrainingID;

-- Question 8
CREATE TABLE Worker.Trainer (
    TrainerID INTEGER NOT NULL,
    TrainingID INTEGER NOT NULL,
    TrainerFirstName VARCHAR(20) NOT NULL,
    TrainerLastName VARCHAR(20) NOT NULL,
    PRIMARY KEY (TrainerID),
    FOREIGN KEY (TrainingID) REFERENCES Worker.Training(TrainingID)
);

SHOW CREATE TABLE Worker.Trainer;

-- COVID-19 Awareness and Protection Training
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (1, 1, 'James', 'Smith');
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (2, 1, 'Johnny', 'Khor');

-- Code of Conduct Training
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (3, 2, 'Michael', 'Smith');

-- Safety Training
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (4, 3, 'Maria', 'Garcia');

-- Intro to Python
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (5, 4, 'John', 'Placeholder');
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (6, 4, 'Paul', 'Deitel');

-- Machine Learning
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (7, 5, 'Mike', 'Taylor');
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (8, 5, 'Avinash', 'Navlani');

-- Microsoft Certifications
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (9, 6, 'Robert', 'Smith');

-- Security and Privacy
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (10, 7, 'Maria', 'Rodriguez');

-- Product Knowledge
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (11, 8, 'Mike', 'Donlon');

-- Sales Skills
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (12, 9, 'Kathy', 'Corby');

-- Employee Relations
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (13, 10, 'Mary', 'Garcia');
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (14, 10, 'Vanessa', 'Placeholder');

-- Travel and Expense Management
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (15, 11, 'Jordan', 'Placeholder');
INSERT INTO Worker.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES (16, 11, 'Maria', 'Hernandez');

SELECT * FROM Worker.Trainer ORDER BY TrainerID;

-- Question 9
SELECT * FROM Worker.Trainer WHERE TrainerLastName IS NULL;

-- Question 10
SHOW TABLES FROM Worker;

-- Question 11
SELECT EmployeeID, FirstName, LastName, HireDate
FROM Worker.Employee
WHERE HireDate > (SELECT HireDate FROM Worker.Employee WHERE FirstName = 'Vivek' AND LastName = 'Pandey')
ORDER BY EmployeeID;

-- Question 12
SELECT e.FirstName, e.LastName, t.TrainingName
FROM Worker.Employee e, Worker.EmployeeTraining et, Worker.Training t
WHERE e.EmployeeID = et.EmployeeID
  AND et.TrainingID = t.TrainingID
  AND e.FirstName = 'Tom'
  AND e.LastName = 'Harper'
ORDER BY t.TrainingName;

-- Question 13
SELECT t.TrainingName, tr.TrainerFirstName, tr.TrainerLastName
FROM Worker.Training t
JOIN Worker.Trainer tr ON t.TrainingID = tr.TrainingID
ORDER BY t.TrainingName, tr.TrainerFirstName, tr.TrainerLastName;

-- Question 14
SELECT EmployeeID, FirstName, LastName, HireDate
FROM Worker.Employee
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Worker.Department
    WHERE DepartmentNm IN ('Accounting and Finance', 'IT Support', 'Production')
)
ORDER BY EmployeeID;

-- Question 15
SELECT e.EmployeeID, e.FirstName, e.LastName, eq.EquipmentName, eq.EquipmentCostAmount
FROM Worker.Employee e
JOIN Worker.EmployeeEquipment ee ON e.EmployeeID = ee.EmployeeID
JOIN Worker.Equipment eq ON ee.EquipmentID = eq.EquipmentID
WHERE e.EmployeeID = 4
ORDER BY e.EmployeeID;

-- Question 16
SELECT TrainerID, TrainingID, TrainerFirstName, TrainerLastName
FROM Worker.Trainer
WHERE TrainerLastName IS NULL OR TrainerLastName = ''
ORDER BY TrainingID, TrainerID;

-- Question 17
SELECT DISTINCT EquipmentName
FROM Worker.Equipment
ORDER BY EquipmentName;

-- Question 18
SELECT e.FirstName, e.LastName, t.TrainingName, tr.TrainerFirstName, tr.TrainerLastName
FROM Worker.Employee e
JOIN Worker.EmployeeTraining et ON e.EmployeeID = et.EmployeeID
JOIN Worker.Training t ON et.TrainingID = t.TrainingID
JOIN Worker.Trainer tr ON t.TrainingID = tr.TrainingID
WHERE e.EmployeeID = 3
ORDER BY t.TrainingName, tr.TrainerFirstName
LIMIT 1;

-- Question 19
SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentID, d.DepartmentNm, ee.EquipmentID, eq.EquipmentName
FROM Worker.Employee e
JOIN Worker.Department d ON e.DepartmentID = d.DepartmentID
LEFT JOIN Worker.EmployeeEquipment ee ON e.EmployeeID = ee.EmployeeID
LEFT JOIN Worker.Equipment eq ON ee.EquipmentID = eq.EquipmentID
ORDER BY e.EmployeeID, d.DepartmentID, ee.EquipmentID;

-- Question 20
SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentID, d.DepartmentNm, et.TrainingID, t.TrainingName
FROM Worker.Employee e
JOIN Worker.Department d ON e.DepartmentID = d.DepartmentID
LEFT JOIN Worker.EmployeeTraining et ON e.EmployeeID = et.EmployeeID
LEFT JOIN Worker.Training t ON et.TrainingID = t.TrainingID
ORDER BY e.EmployeeID, d.DepartmentID, et.TrainingID;