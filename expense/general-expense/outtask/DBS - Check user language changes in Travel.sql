-- Replace XXX with The Login_ID 

SELECT OUTTASK_PREFERENCES_HIST_ID, OPERATION, MODIFIED_BY, TSTAMP_UTC, USER_ID, LANGUAGE_PREF FROM OUTTASK_PREFERENCES_HIST WHERE USER_ID IN (SELECT USER_ID FROM OUTTASK_USER WHERE LOGIN_ID = 'XXX') ORDER BY TSTAMP_UTC DESC  