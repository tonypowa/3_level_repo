-- Script to pull Report, Report Entry and Journal data all in one place. Replace XXX with the REPORT_ID

SELECT * FROM CT_REPORT AS RPT  
JOIN CT_REPORT_ENTRY AS ENTRY ON RPT.RPT_KEY = ENTRY.RPT_KEY 
JOIN CT_JOURNAL AS JRN ON JRN.RPE_KEY = ENTRY.RPE_KEY 
WHERE RPT.REPORT_ID = 'XXX' 
