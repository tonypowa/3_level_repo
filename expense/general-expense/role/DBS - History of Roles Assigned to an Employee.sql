-- Replace XXX with EMP_KEY 

SELECT HIST.LOG_DATE 'Log Date', EMP1.LOGIN_ID 'Changed By', HIST.CHANGE_TYPE 'Change Type', EMP2.LOGIN_ID 'Employee', ROLE.NAME 'Role Name', NODE.NAME 'Group' FROM CT_EMPLOYEE_ROLE_MAP_HIST HIST JOIN CT_EMPLOYEE EMP1 ON HIST.LOG_BY_EMP_KEY=EMP1.EMP_KEY JOIN CT_EMPLOYEE EMP2 ON HIST.EMP_KEY=EMP2.EMP_KEY JOIN CT_ROLE_LANG ROLE ON HIST.ROLE_CODE=ROLE.ROLE_CODE JOIN CT_HIERARCHY_NODE_LANG NODE ON HIST.HIER_NODE_KEY=NODE.HIER_NODE_KEY WHERE ROLE.LANG_CODE = 'en' AND NODE.LANG_CODE='en' AND HIST.EMP_KEY='XXX'  

