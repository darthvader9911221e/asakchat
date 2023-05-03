#!bin/bash
datetime=$(date +'%Y%m%dt%H-%M-%S')
hostname="ah-1266149-001"
guid=$(uuidgen)

declare -A map
{
  #read the first line
  IFS =, read -ra headers
  hlen=$(($#headers[@]}-1))
  
  while IFS=, read -ra values; do
       for i in "${!headers[@]}"; do
	  field=${headers[I]//[[::blank::]]/}
	  printf "${field}\x01${values[1]}"
	  if [ $[i] -lt ${hlen} ]; then
		printf "\x01"
	  fi
	done
    printf "\n"
  done
} <Desktop/view/Login_History.csv> /Desktop/view/"@{datetime}_${hostname}_${guid}.txt"