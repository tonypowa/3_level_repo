-- Replace XXX with the Report_ID

SELECT * 
FROM CT_REPORT_ENTRY 
WHERE RPT_KEY IN (SELECT RPT_KEY FROM CT_REPORT WHERE REPORT_ID = 'XXX') 
