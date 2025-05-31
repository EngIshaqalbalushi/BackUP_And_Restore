

CREATE DATABASE TrainingDB;

GO 
USE TrainingDB; 
GO 


CREATE TABLE Students ( 
    StudentID INT PRIMARY KEY, 
    FullName NVARCHAR(100), 
    EnrollmentDate DATE 
)

INSERT INTO Students VALUES 
(1, 'Sara Ali', '2023-09-01'),
(2, 'Mohammed Nasser', '2023-10-15');


BACKUP DATABASE TrainingDB TO DISK='C:\Users\Codeline\Desktop\Full stack\day 42\TrainingDB.bak';

INSERT INTO Students VALUES 
(3, 'IShaq Ali', '2023-09-01'),
(4, 'Mohammed Nasser', '2023-10-15');

  

BACKUP DATABASE TrainingDB TO DISK='C:\Users\Codeline\Desktop\Full stack\day 42\TrainingDB.bak'
  WITH DIFFERENTIAL;


  ALTER DATABASE TrainingDB SET RECOVERY FULL;

  BACKUP DATABASE TrainingDB TO DISK='C:\Users\Codeline\Desktop\Full stack\day 42\TrainingDB.bak'
  WITH 
COPY_ONLY;

