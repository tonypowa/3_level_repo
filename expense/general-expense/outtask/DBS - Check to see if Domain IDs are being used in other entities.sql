--0Set 'Travel Databases' to 'Outtask' 
 

--Replace XXX with the domain and YYY with the Outtask Company ID

SELECT * FROM OUTTASK_USER WHERE LOGIN_ID = '%@XXX' and COMPANY_ID <> 'YYY'
