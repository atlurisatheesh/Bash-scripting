#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then
echo -e "\e[31m Script is expected to executed by the root user or with a sudo privilege \e[0m \n \t Example: \n\t\t sudo bash wrapper.sh frontend"
       exit 1
fi
stat() {
    if [$1 -eq 0]; then
        echo -e "\e[32m Success \e[0m"
    else
        echo -e "\e[32 Failure \e[0m"
    fi
}
echo "Installing ngninx"
   yum install nginx -y &>> /tmp/frontend.log
   stat $?

echo "startin nginx"
    systemctl enable nginx &>> /tmp/frontend.log
    systemctl start nginx  &>> /tmp/frontend.log
    stat $?

echo "downloading the schema"
 curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"
 stat $?

# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-main README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf

