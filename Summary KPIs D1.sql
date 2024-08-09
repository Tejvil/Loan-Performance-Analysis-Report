use BankLoanDB
select * from Bank_loan_Data;

--Total_Loan_Application
SELECT  COUNT(id) AS Total_Loan_Application
from Bank_loan_Data;

--Total_Loan_Application month to date
SELECT  COUNT(id) AS MTD_Total_Loan_Application
from Bank_loan_Data
WHERE MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;

--Making It Dyanamic
--SELECT 
--    COUNT(id) AS MTD_Total_Loan_Application
--FROM 
--    Bank_loan_Data
--WHERE 
--    MONTH(issue_date) = (SELECT MAX(MONTH(issue_date)) FROM Bank_loan_Data WHERE YEAR(issue_date) = (SELECT MAX(YEAR(issue_date)) FROM Bank_loan_Data))
--    AND YEAR(issue_date) = (SELECT MAX(YEAR(issue_date)) FROM Bank_loan_Data);

--Total_Loan_Application Previous month to month
SELECT  COUNT(id) AS PMTD_Total_Loan_Application
from Bank_loan_Data
WHERE MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;

--Total Funded Amount Month to date
SELECT  SUM(loan_amount) AS MTD_Total_Funded_Amount
from Bank_loan_Data
WHERE MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;
;

--Total Funded Amount Previous Month to date
SELECT  SUM(loan_amount) AS PMTD_Total_Funded_Amount
from Bank_loan_Data
WHERE MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;
;

--Total Amount Received MTD
SELECT SUM(total_payment) as MTD_Total_Payment_Received
from Bank_loan_Data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;

--Total Amount Received pMTD
SELECT SUM(total_payment) as pMTD_Total_Payment_Received
from Bank_loan_Data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;

--AVG interest rate
SELECT  ROUND(AVG(int_rate),4)* 100 AS Avg_Interest_Rate 
from Bank_loan_Data;

--AVG interest rate MTD
SELECT  ROUND(AVG(int_rate),4)* 100 AS Avg_Interest_Rate 
from Bank_loan_Data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;

--AVG interest rate pMTD
SELECT  ROUND(AVG(int_rate),4)* 100 AS Avg_Interest_Rate 
from Bank_loan_Data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;

-- AVG DTI ratio
SELECT ROUND(AVG(dti),4) * 100  AS AVG_DTI
from Bank_loan_Data;

-- AVG DTI ratio MTD
SELECT ROUND(AVG(dti),4) * 100  AS MTD_AVG_DTI
from Bank_loan_Data
WHERE MONTH(issue_date) = 12 and YEAR(issue_date) = 2021;

-- AVG DTI ratio pMTD
SELECT ROUND(AVG(dti),4) * 100  AS pMTD_AVG_DTI
from Bank_loan_Data
WHERE MONTH(issue_date) = 11 and YEAR(issue_date) = 2021;






