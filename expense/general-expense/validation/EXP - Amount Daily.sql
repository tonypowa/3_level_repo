SELECT DISTINCT
rpt.RPT_KEY,
rpt.REPORT_ID,
rpt.NAME [Report Name],
rpe.RPE_KEY,
emp.FIRST_NAME + ' ' + emp.LAST_NAME [Employee Name],
exp.NAME [Expense Type Name],
rpe.TRANSACTION_AMOUNT,
rpe.TRANSACTION_DATE

FROM CT_REPORT rpt

JOIN CT_REPORT_ENTRY rpe
  ON rpt.RPT_KEY=rpe.RPT_KEY

JOIN CT_EMPLOYEE emp
  ON emp.EMP_KEY=rpt.EMP_KEY
  AND emp.ACTIVE='Y'

JOIN CT_EXPENSE_TYPE_LANG exp
  ON exp.EXP_KEY=rpe.EXP_KEY

WHERE 1 = 1
  AND exp.NAME='Individual Meals'
  AND rpe.TRANSACTION_DATE='06/02/2019'
  AND emp.LOGIN_ID='user@login'
