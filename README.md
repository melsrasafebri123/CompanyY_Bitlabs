# Annual People Analytics Report
Bitlabs provides datasets from company Y for us to use for analysis.
- Contributors : Melsra Safebri (Me)
## 1. Case Overview
The company wants to see how many employees are still in the company. From 2009 to 2010, the company managed to retain 95.57% of employees and also increased the number of new employees by 1.5%. The company wants to see how many employees have survived and the increase in the number of employees from 2010 to 2011 compared to the previous year.
## 2. Dataset
The company provides 2 datasets and is confidential
- bitlabs-dab.I-CID-05.employees_2010
- bitlabs-dab.I-CID-05.employees_2011
## 3. File Description
### a. [retentionRate.sql](https://github.com/melsrasafebri123/CompanyY_Bitlabs/blob/main/retentionRate.sql)
Calculate our Employee Retention Rate from 2010 to 2011 by dividing the total number of active employees at the end of 2011 with the total number of employees from the beginning of 2010.
### b. [growthRate.sql](https://github.com/melsrasafebri123/CompanyY_Bitlabs/blob/main/growthRate.sql)
Calculate Company Growth Rate from 2010 to 2011 by subtracting the number of active employees in 2010 by active employees in 2011 then divided by active employees in 2010
### c. [rewardEligible.sql](https://github.com/melsrasafebri123/CompanyY_Bitlabs/blob/main/rewardEligible.sql)
The company wants to give rewards to employees who last until the end of 2011. The company divides the reward according to the length of time the employee has worked. The following is the distribution of the groups:
1. Tenure group 0 - 5 years: $100 / person
2. Tenure group 6 - 10 years: $200 / person
3. Tenure group 11 - 15 years: $300 / person
4. Tenure group 15 years & above: $500 / person
### d. [ageGroup.sql](https://github.com/melsrasafebri123/CompanyY_Bitlabs/blob/main/ageGroup.sql)
In terms of hiring, the company wants to ensure that the number of women and men is equal and then categorizes them into age-appropriate groups as follows:
1. Below 30 years
2. 31 - 40 years
3. 41 - 50 years
4. 51 - 60 years
5. 60 years and above
### e. [top3DeptCity.sql](https://github.com/melsrasafebri123/CompanyY_Bitlabs/blob/main/top3DeptCity.sql)
Figuring out what are the Top 3 Department & City in terms of hiring (based on number of new joiners).
## 4. Visualization
To protect the confidentiality of company data, I need to censor some data
![Viz_CompanyY](https://github.com/melsrasafebri123/CompanyY_Bitlabs/blob/main/Viz_Company%20Y.png)
## 5. Summary
With this analysis, companies can ensure the activeness of employees and take action to increase employee motivation, one of which is to provide rewards.
# THANK YOU
