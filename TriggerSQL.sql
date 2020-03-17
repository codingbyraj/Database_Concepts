USE Ketra_Integration
-- SELECT * FROM JobBill
-- ORDER BY RID DESC;


-- CREATE TABLE TriggerDemo(LastValue INT, CurrentValue INT, Date Datetime);


CREATE TRIGGER trgAfterUpdate ON dbo.JobBill
FOR UPDATE
AS  
declare @productDescription varchar(100);  
select @productDescription = i.ProductDescription1 from inserted i;
set @audit_action='Inserted Record -- After Insert Trigger.';  
  
INSERT INTO trgAfterUpdate
(LastValue, CurrentValue, Date)   
values(,getdate());  
  
PRINT 'AFTER INSERT trigger fired.'  
GO  