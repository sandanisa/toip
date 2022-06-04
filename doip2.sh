mrh="\033[31m"
ijo="\033[32m"
nat="\033[0m"
clear
echo -e "${ijo}                      RESWARA DOMAIN TO IP TOOLS${nat}"
echo ' '
read -p "Input File: " fil;
read -p "Save In: " sv;
while read line; do
cu=$(ping -q -c 1 -t 1 ${line} | grep PING | sed -e "s/).*//" | sed -e "s/.*(//")
c=$(echo "$cu" | wc -l)
if [[ $cu =~ '.' ]];
then
echo "$cu" >> $sv
echo -e "${nat}[${ijo}SUCCES${nat}] $line >> ${ijo}$cu"
else
echo -e ""${nat}[${mrh}FAILED${nat}]${mrh} $line""
fi
done < $fil
echo -e "${ijo} DONE SIR"
