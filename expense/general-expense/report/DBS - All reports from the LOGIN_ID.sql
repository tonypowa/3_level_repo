-- Replace XXX with the LOGIN_ID

SELECT * 
FROM CT_REPORT 
WHERE EMP_KEY IN (SELECT EMP_KEY FROM CT_EMPLOYEE WHERE LOGIN_ID = 'XXX') 