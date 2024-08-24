# Q-In a file the salary details of Employee as stored as below

# EmpID,EmpName,Salary

# print the EmpId and tax amount paid separated by a space for 
# first 3 highest tax players in descending orderof tax paid.
# The tax is calculated as 20%  of the salary. For Example, if the salary
# of the Employee is 20000,the tax amount will be 4000.



#...........INPUT...............

# EmpID;EmpName;Salary
# 1231;Tushar;20000
# 5671;Dick;35000
# 7712;harry;50000
# 8712;Reenee;25000
# 4444;Bakul;50000

#.........OUTPUT.............

# 7712 10000
# 4444 10000
# 5671 7000

# sort -nrk1 -t ";"|
awk 'BEGIN{FS=";"}
(NR>1){
    a=$3*0.2
    print $1,a
}
'|sort -nrk2 -t " "|head -3