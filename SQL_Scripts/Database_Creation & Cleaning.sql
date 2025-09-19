CREATE DATABASE NTI_Project;

create table Person (
   person_id INT PRIMARY KEY IDENTITY(1,1),
   full_name NVARCHAR(100) not null,
   email VARCHAR(100),
   phone VARCHAR(20),
   age INT,
   gender VARCHAR(10),
   Preferred_Learning_Style NVARCHAR(50) 
);

create table Education (
   edu_id INT PRIMARY KEY IDENTITY(1,1),
   person_id INT,
   faculty VARCHAR(100),
   GraduationYear INT,
   GPA DECIMAL(3,2),
   FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

create table Track (
   track_id INT PRIMARY KEY IDENTITY(1,1),
   track_name VARCHAR(100)
);

CREATE TABLE Expectation (
      expectation_id INT PRIMARY KEY IDENTITY(1,1),
      person_id INT,
      track_id INT,
      Goal NVARCHAR(100),
      Applied_NTI  NVARCHAR(10) ,
      FOREIGN KEY (person_id) REFERENCES Person(person_id),
      FOREIGN KEY (track_id) REFERENCES Track(track_id)
);

create table Application_Status (
   status_id INT PRIMARY KEY IDENTITY(1,1),
   person_id INT,
   a_status VARCHAR(20),  
   application_date date,
   FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE Skills (
   skill_id INT PRIMARY KEY IDENTITY(1,1),
   skill_name NVARCHAR(100) NOT NULL
);

CREATE TABLE Person_Skills (
   person_id INT,
   skill_id INT,
   Level INT,
   PRIMARY KEY (person_id, skill_id),
   FOREIGN KEY (person_id) REFERENCES Person(person_id),
   FOREIGN KEY (skill_id) REFERENCES Skills(skill_id)
);

create table Feedback (
   feedback_id INT PRIMARY KEY IDENTITY(1,1),
   person_id INT,
   rating INT,
   comments NVARCHAR(MAX),
   FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

INSERT INTO Person (full_name, age, gender,Preferred_Learning_Style )
SELECT full_name, age, gender,Preferred_Learning_Style
FROM Person11;

select * from Person;
select * from Person11;

drop table Person11;
truncate table Person;
DELETE FROM Person;

select * from Education11;
drop table Education11;




ALTER TABLE Education
ALTER COLUMN GraduationYear NVARCHAR(10);


INSERT INTO Education(person_id,faculty, GraduationYear, GPA )
SELECT person_id, faculty, GraduationYear, GPA
FROM Education11

drop table  Application_Status;
select * from Application_Status;
select * from Application_Status11;
drop table Application_Status11;


INSERT INTO Application_Status(person_id,a_status)
SELECT person_id, a_statues
FROM Application_Status11

select * from Expectation;
select * from Track;

select * from Expectation11;

drop table Expectation11;


INSERT INTO Expectation(person_id,track_id, Applied_NTI, Goal )
SELECT person_id, track_id, Applied_NTI, Goal
FROM Expectation11


select * from Person_Skills;
delete  FROM Person_Skills;

INSERT INTO Skills(skill_name  )
SELECT   track_name
FROM Track

INSERT INTO Person_Skills(person_id ,skill_id,Level)
SELECT   person_id,skill_id,Level
FROM Person_Skills11

UPDATE Person
SET full_name = CASE
    WHEN full_name IS NULL 
         OR full_name LIKE '%[^a-zA-Zأ-ي ]%' 
         OR LEN(LTRIM(RTRIM(full_name))) <= 2
         OR full_name = ''
    THEN 'Unknown'
    ELSE full_name
END;

UPDATE Education
SET Faculty = CASE
    WHEN Faculty IS NULL OR Faculty = '' OR Faculty LIKE '%?%' THEN 'Unknown'
    WHEN Faculty IN ('BIS', 'Bis', 'bis') THEN 'BIS'
    WHEN Faculty LIKE 'BIS %' OR Faculty LIKE '%BIS%' OR Faculty LIKE '%Bis%' THEN 'BIS'
    WHEN Faculty LIKE '%Business Information System%' THEN 'BIS'
    WHEN Faculty LIKE '%BIS-Helwan%' OR Faculty LIKE '%BIS HU%' OR Faculty LIKE '%Bis helwan%' THEN 'BIS'
    
    ELSE Faculty
END;


select * from Person_Skills;


select * from Person;
select * from Education;
select * from Expectation;
select * from Application_Status;
select * from Person_Skills;
select * from Skills;
select * from Feedback;

