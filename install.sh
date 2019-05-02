#!/data/data/com.termux/files/usr/bin/bash

#COLORS
        export black='\033[1;30m'
        export red='\033[1;31m'
        export green='\033[1;32m'
        export yellow='\033[1;33m'
        export blue='\033[1;34m'
        export magenta='\033[1;35m'
        export cyan='\033[1;36m'
        export white='\033[0m'

#INSTALACION DE PAQUETES

echo ""
printf "$cyan[*]$green Instalando paquetes...$white\n"
echo ""
sleep 3

apt install termux-api
apt install neofetch
apt install util-linux
apt install htop

sleep 2
echo ""

printf "$blue		   >> Instalacion Completa <<$white\n"
echo ""
echo ""

#PREGUNTA

function pregunta {
	
	clear
	printf "
        $blue ____            _     _   $green ___        __
        $blue|  _ \ _ __ ___ (_) __| |  $green|_ _|_ __  / _| ___
        $blue| | | | '__/ _ \| |/ _' |   $green| || '_ \| |_ / _ *
        $blue| |_| | | | (_) | | (_| |   $green| || | | |  _| (_) |
        $blue|____/|_|  \___/|_|\__,_|  $green|___|_| |_|_|  \___/  v2.0

                $cyan.:.:.$white Script encoded by: @JRIC2002 $cyan.:.:.$white
$cyan.:.:.$white Description: See More Information About the Operating System$cyan .:.:.$white
	"
	echo ""

	sleep 1
	printf "$cyan[$white\e0#$cyan]$magenta Desea iniciar Droid-Info?$white\n"
	echo ""
	sleep 1
	printf "$green       [$white\e001$green]$yellow Si$white\n"
	echo ""
	printf "$green       [$white\e002$green]$yellow No$white\n"
	echo ""
	
	printf "$green[$white\e0*$green]$green Choose an Option$white >>"
	read -p " " opt
	
		if [ $opt = "1" -o $opt = "01" ]; then
			clear 
			bash Droid-Info
		elif [ $opt = "2" -o $opt = "02" ]; then
			echo ""
			exit
		else
			clear
			pregunta
		fi
}

pregunta

