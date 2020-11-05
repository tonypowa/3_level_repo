-- Replace XXX with Cash Advance name 

SELECT * FROM CT_JOURNAL WHERE CA_KEY = (SELECT CA_KEY FROM CT_CASH_ADVANCE WHERE NAME = 'XXX') 

-- If there is no JR_KEY then the Cash Advance has not been extracted. 
