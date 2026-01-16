#!/bin/bash


read -p "Enter the name of your car brand " car

case $car in
    Tesla)
    #Runs if car variable is exactly Tesla
    echo -n "${car}'s car factory is in the USA"
    # -n; no newline- next echo continues on same line
    echo " Na Elon Musk get am"
    ;;

    BMW | Mercedes | Audi | Porsche)
	#Runs if car matches the above pattern
	echo -n "${car}'s factory is in germany"
	echo "Engineering BABA"
	;;
    Toyota | Mazda | Mitsubishi | Subaru)
         echo -n "${car}'s car factory is in Japan"
         echo " Na Elon Musk get am"
	 ;;
     *)
          #This is the default case - runs for all other brands
	  echo -n "${car}'s factory is unknown, i dont know thisbrand"
	  echo " You can educate me"
esac #End of case statement

echo ""
echo "You are a curious being!"
