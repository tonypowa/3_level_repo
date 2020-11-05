--Adding a description to this query

SELECT TOP 1000 * FROM CT_AUDIT WHERE AUDIT_TYPE = 'configchange.delegateconfigform' AND PROD_CODE = 'EXP' ORDER BY AUDIT_DATE DESC
