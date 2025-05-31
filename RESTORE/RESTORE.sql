
USE TrainingDB

ALTER DATABASE TrainingDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
 
 DROP DATABASE TrainingDB;



 --Restore FULL backup
 RESTORE DATABASE TrainingDB  
FROM DISK = 'C:\Users\Codeline\Desktop\Full stack\day 42\TrainingDB.bak' 

--  Restore DIFFERENTIAL backup
 RESTORE DATABASE TrainingDB  
FROM DISK = 'C:\Users\Codeline\Desktop\Full stack\day 42\TrainingDB.bak' 
WITH NORECOVERY;


--Restore TRANSACTION LOG backu
 RESTORE DATABASE TrainingDB  
FROM DISK = 'C:\Users\Codeline\Desktop\Full stack\day 42\TrainingDB.bak'
WITH RECOVERY;