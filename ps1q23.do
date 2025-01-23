** Question 2

use "/Users/dorisl/Desktop/MIDP/Spring 2025/Reg Method/5. problem sets/ps1/charity.dta"

* i. What is the average gift in the sample of 4,268 people (in Dutch guilders)? What percentage of people gave no gift?
sum gift
tab gift

* ii. What is the average mailings per year? What are the minimum and maximum values?
sum mailsyear

* iii.	Estimate the model
regress gift mailsyear

* v.	What is the smallest predicted charitable contribution in the sample? 
predict gifhat
sum gihat

* vi.	Create a new variable that measures mail in mailspermonth. Confirm that the coefficient you obtain using this new variable is as large as it should be.
gen mailspermonth = mailsyear / 12
regress gift mailspermonth

clear


** Question 3

use "/Users/dorisl/Desktop/MIDP/Spring 2025/Reg Method/5. problem sets/ps1/pset1_qn3.dta"

* Using the sample provided estimate the coefficients  0,  1 and  2.
regress clr tfr gnpcap

* Calculate the correlation coefficient between GNPCAP and TFRHAT.
regress tfr gnpcap

* Calculate and comment on the correlation between TFRRESID and GNPCAP
gen tfrresid = tfr -tfrhat
pwcorr tfrresid gnpcap

* Regress the child labor rate, CLR, on TFRRESID
regress clr tfrresid
