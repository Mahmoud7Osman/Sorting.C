while [ 1 ];do
	clear
	cleny ui/menu.cleny
	printf "Choose Your Algorithm: "
	read algorithm

	if [ $algorithm == "1" ];then
		clear
		cleny algos/bubble_sort/details.cleny
		sleep 0.5
		printf "\n\n[*] Press Enter To Run The Algorithm\n"
		read
		algos/bubble_sort/a.out
		sleep 0.5
		printf "\n\n[*] Press Enter To Get Back To Main Menu\n"
		read
	fi
done
