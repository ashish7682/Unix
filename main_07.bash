# touch xyz.txt
awk 'BEGIN{FS=":"; OFS="-";}
(NR>1){
    a[$2]++;    
} 
END {
    for(i in a) {
        print i, a[i];
    }
}' xyz.txt | sort -t "-"


ID:Brand:Model:YearofMfg:Price
M1:Samsung:Galaxy A15:2021:40000
M24:Sony: Xperia Pro:2021:42000 
M11:Sony:Xperia L1:2020:15000
M09:Apple:iPhone 13:2021:750000
M34:Samsung:A10:2020:25000
M06:Nokia:C2:2020:20000

Apple-1
Nokia-1
Samsung-2
Sony-2