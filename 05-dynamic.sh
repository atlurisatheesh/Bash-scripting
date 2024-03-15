#!/bin/bash

DATE="$(date +%F)"
TIME="$(date +%c)"
Active_session="$(who | wc -l)"


echo "Todays date is : $DATE"
echo "Now the time is : $TIME"
echo "Printing the Active session: $Active_session"