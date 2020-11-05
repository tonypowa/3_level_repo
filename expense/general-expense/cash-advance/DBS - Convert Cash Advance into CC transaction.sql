-- Replace XXX with the name of the Cash advance. 

SELECT * FROM CT_CREDIT_CARD_TRANSACTION WHERE CA_KEY = (SELECT CA_KEY FROM CT_CASH_ADVANCE WHERE NAME = 'XXX') 

-- Then:  

--	Admin > Company > Tools > company card 

--	Manage CAV Transactions > insert the CCT_KEY > Search   

--	Confirm the values  

--	Click "Convert" 

--	Then hide the transaction 
