-- Replace XXX with EMP_KEY 

SELECT * FROM CT_EMPLOYEE_ROLE_MAP ROLE JOIN CT_ROLE_LANG LANG ON ROLE.ROLE_CODE=LANG.ROLE_CODE WHERE EMP_KEY = 'XXX' AND LANG.LANG_CODE = 'en'


