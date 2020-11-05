-- Find deleted reports with EMP_KEY of the Submitter. Replace XXX with the report owner’s EMP_KEY

SELECT * 
FROM CT_AUDIT 
WHERE PARAMETERS LIKE '%XXX%' 
AND REPORT_TYPE = 'report.delete' 
