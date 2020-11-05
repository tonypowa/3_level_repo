-- Pull last 5000 Deleted reports. Then use CTRL + F to find the report name and consult the EMP_KEY Column

SELECT TOP 5000 * 
FROM CT_AUDIT 
WHERE AUDIT_TYPE = 'REPORT.DELETE' 
ORDER BY AUDIT_DATE DESC 
