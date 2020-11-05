-- This is to pull the audit profile questions, Profile and question in English, answers in each language

SELECT PRO.NAME AS 'Profile Name', MAP.SEQUENCE_NUMBER AS 'Question Sequence', 
QUE.TEXT AS 'Question', QUE.SYSTEM_RECORD AS 'System Record N=Customized, Y=Default', 
ANS.LANG_CODE AS 'Language', ANS.COMMENT AS 'Answer' 
FROM CAW.AUDIT_PROFILE_LANG AS PRO 
   JOIN CAW.AUDIT_PROFILE_QUESTION_MAP AS MAP 
     ON PRO.AP_KEY=MAP.AP_KEY 
   JOIN CAW.QUESTION_LANG AS QUE 
     ON MAP.QUESTION_KEY=QUE.QUESTION_KEY 
   JOIN CAW.QUESTION_ANSWER_MAP_LANG AS ANS 
     ON QUE.QUESTION_KEY=ANS.QUESTION_KEY 
WHERE PRO.LANG_CODE = 'en' 
   AND QUE.LANG_CODE = 'en' 
