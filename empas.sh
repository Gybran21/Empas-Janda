# Deobfus By X - MrG3P5

trap 'store; exit 1;' 2
threads="20"
bl="\033[30;1m"
r="\033[31;1m"
y="\033[33;1m"
yl="\033[1;33m"
g="\033[0;32m"
gl="\033[32;1m"
b="\033[0;36m"
c="\033[36;1m"
p="\033[0;35m"
o="\033[0m"
cek(){
command -v wget > /dev/null 2>&1 || { echo >&2 "wget belum terinstall ketik >> pkg install wget -y .....lalu ketik bash empas"; exit 1; }
command -v pv > /dev/null 2>&1 || { echo >&2 "pv belum terinstall ketik >> pkg install pv -y .....lalu ketik bash empas"; exit 1; }
}
banner(){
clear
echo -e "" | pv -qL 600
echo -e "" | pv -qL 600
echo -e "$yl          _______$bl _______  _____  _______ _______" | pv -qL 600
echo -e "$yl          |______$bl |  |  | |_____] |_____| |______" | pv -qL 600
echo -e "$yl          |______$bl |  |  | |       |     | ______|" | pv -qL 600
echo -e "" | pv -qL 600
echo -e "$bl        -----------------$yl Project $bl----------------" | pv -qL 600
echo -e "$yl             Youtube : Fahmi Cog" | pv -qL 600
echo -e "$yl             Github  : github.com/fahmicog" | pv -qL 600
echo -e "$bl        ------------------------------------------" | pv -qL 600
echo -e ""
}

mulai (){
wget https://raw.githubusercontent.com/fahmicog/fahmicog/main/BqIoslaA/empas.txt -o done
for anjay in $(shuf empas.txt)
do
echo "$anjay"
sleep 0.3
done
}
empas-fresh (){
wget https://raw.githubusercontent.com/fahmicog/fahmicog/main/BqIoslaA/empas-fresh.txt -o done
for anjayy in $(shuf empas-fresh.txt)
do
echo "$anjayy"
sleep 0.3
done
}
empas-uncheck (){
wget https://raw.githubusercontent.com/fahmicog/fahmicog/main/BqIoslaA/empas-uncheck.txt -o done
for anjayyy in $(shuf empas-uncheck.txt)
do
echo "$anjayyy"
sleep 0.3
done
}
empas-moontod(){
wget https://raw.githubusercontent.com/fahmicog/fahmicog/main/BqIoslaA/empas-monton.txt -o done
for anjayyyy in $(shuf empas-monton.txt)
do
echo "$anjayyyy"
sleep 0.3
done
}
function stor() {
if [[ -n "$threads" ]]; then
printf "\n"
printf "\e[1;91m [*] Waiting threads shutting down...\n\e[0m"
sleep 4
fi
}

function store() {
if [[ -n "$threads" ]]; then
printf "\n"
printf "\e[1;91m [*] Memutuskan program tunggu...\n\e[0m"
rm -rf empass
rm -rf done
rm -rf empas-fresh
rm -rf empas-monton
rm -rf empas-uncheck
sleep 2
echo -e "${g}Selesai${o}"
echo -e "$g╔═╣${y}  Mau lagi gak ? ${g}║"
echo -e "$g║ ╚══════════════════╝"
read -p $'\033[0;32m╚══════>\033[0m ' lagi
if [[ $lagi == 'mau' || $lagi == 'lagi' || $lagi == 'iya' || $lagi == y || $lagi == Y ]]; then
clear
menu
else
exit
fi
fi
}
menu(){
banner
echo -e "    ${bl}(${yl}1${bl})${bl} Update Script${o}" | pv -qL 600
echo -e "    ${bl}(${yl}2${bl})${bl} Langsung Cari Empas${o}" | pv -qL 600
echo -e "    ${bl}(${yl}3${bl})${bl} Langsung Cari Empas Fresh${o}" | pv -qL 600
echo -e "    ${bl}(${yl}4${bl})${bl} Langsung Cari Empas Uncheck${o}" | pv -qL 600
echo -e "    ${bl}(${yl}5${bl})${bl} Langsung Cari Empas Moonton${o}" | pv -qL 600
echo ""
read -p $'  \033[1;33mPilih\033[1;30m?\033[0m ' pilihan
echo ""
if [[ $pilihan == 1 ]]; then
git pull origin master
exit
elif [[ $pilihan == 2 ]]; then
mulai
elif [[ $pilihan == 3 ]]; then
empas-fresh
elif [[ $pilihan == 4 ]]; then
empas-uncheck
elif [[ $pilihan == 5 ]]; then
empas-moontod
else
echo -e "${r}Pilih yang ada aja njeng"
banner
menu
fi
}

cek
menu
