#!/bin/bash

function box_out()
{
  local s=("$@") b w
  for l in "${s[@]}"; do
    ((w<${#l})) && { b="$l"; w="${#l}"; }
  done
  tput setaf 3
  echo " -${b//?/-}-
| ${b//?/ } |"
  for l in "${s[@]}"; do
    printf '| %s%*s%s |\n' "$(tput setaf 4)" "-$w" "$l" "$(tput setaf 3)"
  done
  echo "| ${b//?/ } |
 -${b//?/-}-"
  tput sgr 0
}

gen_vertical_line1(){
	echo "					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
					  |
						 "

}

gen_vertical_line2(){
	echo "				  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
												  |
						 "

}



while true
do
	tput clear
	cat weather_symbol.txt

	tput cup 0 0
	gen_vertical_line1
	tput cup 0 70
	gen_vertical_line2
	
	
	tput cup 0 50
	tput setaf 5
	tput bold
	echo "Gurkefars weather channel (Lyngby)"
	tput sgr0	
		
	tput cup 1 50
	tput setaf 5
	echo "###################################"
	tput sgr0

	tput cup 3 50
	tput setaf 3
	echo "Temperature:"
	tput sgr0
	#Maybe do some logic with API call
	
	tput cup 4 50
	echo "<API get request temperature>: "
	tput sgr0

	tput cup 6 50
	tput setaf 2
	echo "Humidity:"
	tput sgr0
	#Maybe do some logic with API call
	
	tput cup 7 50
	echo "<API get request humidity>: "
	tput sgr0

	tput cup 9 50
	tput setaf 4
	echo "Rain:"
	tput sgr0
	#Maybe do some logic with API call
	
	tput cup 10 50
	echo "<API get request rain percentage>: "
	tput sgr0

	
	tput cup 43 0
	current_date=$(date) 

	box_out Date: $current_date


	sleep 5
done