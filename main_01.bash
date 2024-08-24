
# ........INPUT.........

# R101-55-12-12
# R234-67-42-13
# R511-40-40-40


#.......OUTPUT.........

# R511-40-40-40
# Total: 1

awk 'BEGIN{FS="-";count=0}
{
    if(($2==$3) && ($3==$4))
    {
    count=count+1;
    print $1"-"$2"-"$3"-"$4;
    }
}
    END{print "Total: "count;}   '