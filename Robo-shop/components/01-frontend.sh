#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then
echo -e "\e[31m Script is expected to executed by the root user or with a sudo privilege \e[0m \n \t Example: \n\t\t sudo bash wrapper.sh frontend"
       exit 1
fi

echo "Installing ngninx"
   yum install nginx -y &>> /tmp/frontend.log

echo "startin nginx"
    systemctl enable nginx &>> /tmp/frontend.log
    systemctl start nginx  &>> /tmp/frontend.log

echo "downloading the schema"
 curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-main README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf

