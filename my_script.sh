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



while true
do
	

	tput clear
	#cat weather_symbol.txt



	
	tput setaf 1
	tput bold
	echo "Gurkefars weather channel (Lyngby)"
	tput sgr0	
		
	tput setaf 1
	echo "###################################"
	tput sgr0

	tput setaf 3
	echo "Temperature:"
	tput sgr0
	#Maybe do some logic with API call
	
	weather=$(curl -s "https://api.openweathermap.org/data/2.5/weather?lat=55.777130&lon=12.535870&appid=b3bcec57e407349e5301d8144a8eacdc&units=metric")
	echo $weather | jq -r '.main.temp' 
	tput sgr0

	tput setaf 2
	echo "Humidity:"
	tput sgr0
	#Maybe do some logic with API call
	
	echo $weather | jq -r '.main.humidity' 
	tput sgr0

	tput setaf 2
	echo "Pressure:"
	tput sgr0
	#Maybe do some logic with API call
	
	echo $weather | jq -r '.main.pressure' 
	tput sgr0

	
	tput setaf 6
	echo "Wind:"
	tput sgr0
	#Maybe do some logic with API call
	
	echo $weather | jq -r '.wind.speed' 
	tput sgr0

	
	current_date=$(date) 

	box_out Date: $current_date

	


	sleep 5
done