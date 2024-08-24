#.........INPUT.........

#Rollno,Name,Sub,Score

# 101,Adam,CsC,30
# 103,Bijay,Math,50
# 104,Madhu,ECE,89
# 105,Tagar,Math,78
# 102,Jhui,Csc,50


#.......OUTPUT.......... (if it ask in ascending order)                                            
# 101
# 102
# 103

awk 'BEGIN{FS=","}
{
    if($4<60)
    {
        print $1;
    }
}
'|uniq|sort



#.......OUTPUT..........(if it ask in descending order)
# 103
# 102
# 101

awk 'BEGIN{FS=","}
{
    if($4<60)
    {
        print $1;
    }
}
'|uniq|sort -r