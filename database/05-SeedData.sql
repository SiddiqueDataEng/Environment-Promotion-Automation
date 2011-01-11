/*
 * Environment Promotion Automation
 * Sample Data
 * SQL Server 2008/2012
 */

USE PromotionETL;
GO

-- Insert sample records
INSERT INTO dbo.MainRecords (RecordCode, RecordName, Description, CreatedBy)
VALUES
('REC001', 'Sample Record 1', 'First sample record for Environment-Promotion-Automation', 'admin'),
('REC002', 'Sample Record 2', 'Second sample record for Environment-Promotion-Automation', 'admin'),
('REC003', 'Sample Record 3', 'Third sample record for Environment-Promotion-Automation', 'admin');

PRINT 'Sample data inserted successfully';
PRINT 'Total records: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
GO
