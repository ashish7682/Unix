# Rajesh is playing a game and he is stuck at a point.

# Few lines having a list of numbers separated by comma are given to him and he must create the number possible by considering the comma separated numbers from each line as digits of the number and find the greatest of all the numbers created.

# Now your task is to help him in creating the numbers that can be formed from the list of comma separated numbers in each line and choose the greatest among all such newly created numbers.

# Condition: Every line contains a list of numbers separated by","and you need to create the numbers that can be formed from that list of comma separated numbers for each line and finally, you need to print the greatest from all the numbers. (For more clarity see the sample input and output format along with explanation)

# Write a Unix command that prints the greatest number that satisfies the above condition,

# Input: Few lines having a list of numbers separated by", 

# Output: print the greatest number


# Sample Input :


# 3,0,4,5,9

# 2,1,5,9

# 1,2,3,4,5


# Expected output:


# 30459



awk 'BEGIN{FS=",";}
{
    num=""
    for(i=1;i<=NF;i++)
    {
        num=num $i;
        print num;
    }
}
'|sort -nr|head -n 1








# # Explanation:
# # awk -F,: This sets the field separator to a comma, 
# #so awk will treat each comma-separated number as a separate field.
# # { num = ""; for (i = 1; i <= NF; i++) num = num $i; print num }:
# # num = "": Initializes an empty string to store the number.
# # for (i = 1; i <= NF; i++) num = num $i;:
# # Loops through each field (number) and concatenates them to form a single number.
# # print num: Prints the number formed from the line.
# # | sort -nr: Sorts the numbers in numerical and reverse order (largest first).
# # | head -n 1: Prints only the largest number.