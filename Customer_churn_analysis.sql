-- SELECT * FROM customer_churn;

-- Q1. FIND THE TOTAL NUMBER OF CUSTOMERS?

-- SELECT COUNT(*) FROM customer_churn;

-- Q2. FIND THE NUMBER OF CUSTOMERS STILL IN YOUR CHURN?

-- SELECT COUNT(*) AS churned_customers
-- FROM customer_churn
-- WHERE "Churn" = 'Yes';

-- Q3. Find the customer churn rate in percentage?

-- SELECT ROUND(SUM(Case WHEN "Churn" = 'Yes' THEN 1 ELSE 0 END)*100/
-- COUNT(*),2)
-- AS "Churn_rate"
-- FROM customer_churn;

-- Q4. Calculate average monthly charges

-- SELECT AVG ("Monthly_Charges")
-- FROM customer_churn;

-- Q5. CHURN BY CONTRACT TYPE?
-- SELECT "Contract_Type", COUNT(*) AS Customers
-- FROM customer_churn 
-- GROUP BY "Contract_Type";

-- Q6. FIND THE CHURN BY INTERNET SERVICES?

-- SELECT "Internet_Service", COUNT(*) AS Customers
-- FROM customer_churn 
-- GROUP BY "Internet_Service";

-- Q7, FIND THE CHURN BY STATE?
-- SELECT "State",COUNT(*)
-- FROM customer_churn
-- WHERE "Churn" = 'Yes'
-- GROUP BY "State"
-- ORDER BY 2 DESC;

-- Q8. FIND THE PAYMENT METHOD BY CUSTOMERS?

-- SELECT "Payment_Method" , COUNT(*)
-- FROM customer_churn
-- GROUP BY "Payment_Method";

-- Q9. FIND THE HIGHEST REVENUE STATE?

-- SELECT "State", SUM("Total_Charges") AS State_Charges
-- FROM customer_churn
-- GROUP BY "State"
-- ORDER BY 2 DESC;

-- Q10. FIND THE  HIGHEST CHARGES BY CONTRACT?

-- SELECT "Contract_Type" , ROUND(AVG("Total_Charges")) AS Charge_By_Contract
-- FROM customer_churn
-- GROUP BY "Contract_Type";

-- Q11. FIND THE TOTAL CHURN BY SENIOR CITIZENS?

-- SELECT "Senior_Citizen" , COUNT(*)
-- FROM customer_churn
-- WHERE "Churn" = 'Yes'
-- GROUP BY "Senior_Citizen";

-- Q12. FIND THE TOP 10 HIGH VALUE CSTOMERS?

SELECT "Customer_Name" , "Customer_Value"
FROM customer_churn
ORDER BY "Customer_Value" DESC LIMIT 10;


