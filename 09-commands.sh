#!bin/bash

# there four types of commands are there
# 1) Binary  (/bin   /sbin)
# 2) Alias 
# 3) shel Built-in command 
# 4) Funtions (set of/ group of commands that can be written in a sequence and we can call whenever we want)

# How to declare a funtion?
# f(){
#     message
# }

# f

Demo(){
    echo "Hai I am from command script"
    echo "I came here to say Hai"
    echo "I am done with that, Okay Bye"
repo(){
    echo "Hai I am fro funtion insde the funtion"
}
stat(){
    echo "Todays date is : "$(date +%c)""
}
ses(){
    echo "$(uptime)"
    echo "$(uptime | awk -F : '{print $NF}' | awk -F , '{print $2}')"
}
ses
repo
stat
}
Demo

sleep 1
Demo

sleep 2
