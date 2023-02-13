* case-sensitive
* file tab -> change working directory

* file tab -> open

* browse the dataset
browse
br

* describe the dataset
describe
codebook

* female is a column name
tab female

*age is a colum name
summarize age

replace age = . if age == -1

* check the documentation of command: replace
help replace

* generate new column
generate monthlyPizza = pizza/12

* generate education column
generate Education = .
replace Education = 1 if hs == 1
replace Education = 2 if college == 1
replace Education = 3 if grad == 1
replace Education = 0 if (hs == 0 & college == 0 & grad == 0)

*rename the column name
rename Education education

*Label variable and variable values
label variable education "Highest Education Achieved"
label define eduLabel 0 "Less than High School" 1 "High School" 2 "Undergraduate Degree" 3 "Graduate Degree"
label values Education eduLabel

codebook Education

tab Education
tab Education, nolabel

****
describe //general information
summarize //condensied codebook
tab // categorical
codebook //advanced describe, distribution, missing data, mean

* correlation
correlate income ageç

* scatter graph
twoway scatter income age

* Send regression output to document
ssc install asdoc // user written command
asdoc regress income age