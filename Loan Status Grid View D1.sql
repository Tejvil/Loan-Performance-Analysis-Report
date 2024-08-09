USE BankLoanDB
SELECT * from Bank_loan_Data;

SELECT distinct loan_status
from Bank_loan_Data;

-- Finding Good_loan_percentage
SELECT 
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)
	/
	(COUNT(id))  AS Good_loan_percentage
from Bank_loan_Data;

-- Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications
from Bank_loan_Data
--where loan_status = 'Fully Paid' OR loan_status = 'Current'
where loan_status in ('Fully Paid' , 'Current');

-- Good loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount
from Bank_loan_Data
where loan_status in ('Fully Paid' , 'Current');

-- Good loan Amout Recieved
SELECT SUM(total_payment) AS Good_Loan_Amount_Recieved
from Bank_loan_Data
where loan_status in ('Fully Paid' , 'Current');

-------

--Bad Loan Percentage
SELECT 
    (COUNT(CASE WHEN loan_status = 'Charged off' Then id END) * 100.0)
	/
	COUNT(id) AS Bad_Loan_Paercentage
FROM Bank_loan_Data;

--Bad Loan Application
SELECT COUNT(id) Bad_Loan_Applications
FROM Bank_loan_Data
WHERE loan_status = 'Charged off';

-- Bad loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount
from Bank_loan_Data
where loan_status in ('Charged off');

-- Bad loan Amout Recieved
SELECT SUM(total_payment) AS Bad_Loan_Amount_Recieved
from Bank_loan_Data
where loan_status in ('Charged off');








