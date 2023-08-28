#!/bin/bash

 

# Define the application name
application_name="UshuaiaApp"

 

testpoweroff()
{

 

# Clear the terminal
clear

 

# Display the message indicating system failure and imminent power off
count=30

 

while [ $count -gt 0 ]; do
    clear

 

echo "#########################################################################
                       FAILED TO START SYSTEM.
"
echo "POWERING OFF IN $count SECONDS ....
#########################################################################"
    sleep 1
    count=$((count - 1))
done

 

#echo "
#########################################################################
                       FAILED TO START SYSTEM.

 

                     POWERING OFF IN 30 SECONDS ....
#########################################################################"
# Wait for 10 seconds before powering off the system
sleep 10
#for i in {30..1..5};do echo -n "$i." && sleep 5; done
# Power off the system using the "poweroff" command with sudo
echo "Kumar" 
poweroff;

 

}

 


# Loop for the specified duration
while true; do
  # Check if the application is running
  if ps -A | grep $application_name; then
    echo "The application is running."
  else
    echo "The application is not running."
    testpoweroff;
  fi

 

  # Sleep for one second
  sleep 1
done
