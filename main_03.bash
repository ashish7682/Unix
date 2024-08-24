#...........INPUT..............

# SID|NAME|SUBJECT|MARK
# 1|Siddharth|Math|98
# 2|Shreya|Physics|68
# 3|Akhil|Chemistry|32
# 4|Sarthak|Biology|70


#...........OUTPUT.............

# Siddharth Gold
# Shreya Silver
# Akhil Bronze
# Sarthak Silver




awk 'BEGIN{FS="|";}
(NR>1){
    if($4>=90)
    {
        print($2,"Gold");
    }else if($4>=60 && $4<90)
    {
        print($2,"Silver");
    }else if($4<60)
    {
        print($2,"Bronze");
    }
}
'


#...........OUTPUT.............(if output like this)


# Siddharth|Gold
# Shreya|Silver
# Akhil|Bronze
# Sarthak|Silver


awk 'BEGIN{FS="|";OFS="|";}
(NR>1){
    if($4>=90)
    {
        print($2,"Gold");
    }else if($4>=60 && $4<90)
    {
        print($2,"Silver");
    }else if($4<60)
    {
        print($2,"Bronze");
    }
}
'


