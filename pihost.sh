#!/bin/bash

# make sure we have root privileges.
if [ "$(whoami)" != "root" ]; then
echo "Root privileges are required."
exit 1
fi

while : ; do
read -p "Please enter new host name, or press enter to exit: " hostName
if [ -z "${hostName}" ]; then
break
fi
if ! [[ "${hostName}" =~  ^[[:lower:][:digit:].-]+$ ]]; then
echo "Impropperly entered host name."
continue
fi
echo "$hostName" > /etc/hostname
# Set the host name in /etc/hosts This probably breaks visual purdiness, sorry.
sed -i "s/.*\(127\.0\.0\.1\|::1\).*/\1    localhost.localdomain    localhost    ${hostName}/g" /etc/hosts
# Add additional licenses to the array
licenseList=(
   MPG2
    WVC1
    )
for i in ${licenseList[@]} ; do
if ! grep "^$i=" /boot/config.txt ; then
read -p "Enter $i license for $hostName: " license
echo "decode_${i}=$license" > /boot/config.txt
fi
done
done
exit 0
