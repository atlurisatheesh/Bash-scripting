#!/bin/bash


# Conditons helps us to execute something only if SOME-Factor is true and if that factor is false then that something won't be executed.


# Syntax Of CASE 
# case $var in 
#     opt1)  commands-x ;; 
#     opt2)  commands-y ;;
# esac 

    ACTION=$1
    case $ACTION in
        start)
            echo -e "\e[32m Starting the payment \e[0m"
            exit 0
            ;;
        Stop)
            echo -e "\e[31m Stoping the payment \e[0m"
            exit 1
            ;;
        Restart)
            echo -e "\e[34m Restarting the payment \e[0m"
            exit 2
            ;;
        *)
            echo -e "\e[35m Valid Options are start or stop or restart \e[0m"
            echo -e "\e[33m Example Usage \e[0m :\n \t bash scriptName stop"
            exit 3
         ;;

    esac