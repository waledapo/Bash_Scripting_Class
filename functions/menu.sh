#!/bin/bash


#COLOUR DEFINITIONS
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'#No colour

# Print Coloured message
print_colour() {
    echo -e "${1}${2}${NC}"

}
#Show System information

show_system_info() {
     clear
     print_color $BLUE "=== SYSTEM INFORMATION ==="
     echo""

     echo "Hostname: $(hostname)"
     echo "Kernel: $(uname -r)"
     echo "Uptime: $(uptime -p)"
     echo "Date: $(date)"

     read -p "Press Enter to Continue: "
}
#Show disc usage
show_disc_usage() {
      clear
      print_colour $GREEN "=== DISK USAGE ==="
      echo ""
      df -h | head -10
      echo""

      df -h | tail -n + 2 | while read line; do
          use_percent=$(echo $line | awk '{print $5}' | sed 's/%//')
    	  if [[ $use_percent -gt 80 ]]; then
              print_colour $RED "Warning $(echo $line | awk 'print $1') is ${use_percent}% full"
          fi
      done

     echo ""
     read -p "Press Enter to continue: "

}

#Monitor running Processes

monitor_processes() {

    clear
    print_colour $YELLOW "== TOP PROCESSES "
    echo ""

    echo "1. By CPU usage"
    ps aux --sort=%cpu | head -6
    echo ""

    echo "2. By memory usage"
    ps aux --sort=%mem | head -6
    echo ""

     read -p "Press Enter to continue: "

}

#Create a new user
create_user() {
    clear
    print_colour $BLUE "== CREATE NEW USER === "
    echo ""

     read -p "Enter username: " username
     read -p "Enter full name: " fullname
     if [[ -z "$username" ]] || [[ -z "$fullname" ]]; then
         print_colour $RED "Error: Username and fullname required "
     else
         echo ""
	 echo "Would create user:"
	 echo "Username: $username"
	 echo " Full Name: $fullname"
	 echo "Home: /home/$username"
	  print_colour $GREEN "User '$username' ready to be created"
      fi

      echo ""
      read -p "Press Enter to continue: "
}
#Show main menu

show_menu() {
    clear
    print_colour $GREEN "=== SYSTEM ADMIN MENU"
    echo ""
    echo "1. Show system information"
    echo "2. Check Disk Usage"
    echo "3. Monitor Processes"
    echo "4. Create New User"
    echo "0. Exit"
    echo ""
}
#Main Program Loop
main() {
    while true; do
        show_menu

	read -p "Enter your choice: " choice
	case $choice in
	    1) show_system_info ;;
	    2) show_disc_usage ;;
	    3) monitor_processes ;;
	    4) create_user ;;
	    0) print_colour $GREEN "=== GOODBYE" 
	       exit 0 ;;
	    *) print_colour $RED "Error: Invalid choice, try again"
		sleep 2 ;;
         esac
    done

}
main
