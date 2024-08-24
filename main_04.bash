
#...............INPUT................

# RollNo|Name|Department
# 100234|Hiren Das|Commerce
# 234156|Sital Gupta|Anthro
# 652131|Joshep M|Commerce
# 234156|Sital Gupta|Commerce
# 234156|Sital Gupta|Anthro
# 234156|Sital Gupta|Botany

#..........OUTPUT.................

# Anthro 2
# Botany 1
# Commerce 3


awk 'BEGIN{FS="|";}
(NR>1){
    a[$3]++;
}
    END{for(i in a)
        print(i,a[i])
    }
'|sort -t " "