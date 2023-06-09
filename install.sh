#!/bin/bash
clear;
echo -e "

░██████╗███████╗░█████╗░██╗░░░██╗██████╗░███████╗  ██████╗░░█████╗░░██████╗░██████╗░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░  ░█████╗░██╗░░██╗███████╗░█████╗░██╗░░██╗███████╗██████╗░
██╔════╝██╔════╝██╔══██╗██║░░░██║██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██╔════╝██╔════╝░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗  ██╔══██╗██║░░██║██╔════╝██╔══██╗██║░██╔╝██╔════╝██╔══██╗
╚█████╗░█████╗░░██║░░╚═╝██║░░░██║██████╔╝█████╗░░  ██████╔╝███████║╚█████╗░╚█████╗░░╚██╗████╗██╔╝██║░░██║██████╔╝██║░░██║  ██║░░╚═╝███████║█████╗░░██║░░╚═╝█████═╝░█████╗░░██████╔╝
░╚═══██╗██╔══╝░░██║░░██╗██║░░░██║██╔══██╗██╔══╝░░  ██╔═══╝░██╔══██║░╚═══██╗░╚═══██╗░░████╔═████║░██║░░██║██╔══██╗██║░░██║  ██║░░██╗██╔══██║██╔══╝░░██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗
██████╔╝███████╗╚█████╔╝╚██████╔╝██║░░██║███████╗  ██║░░░░░██║░░██║██████╔╝██████╔╝░░╚██╔╝░╚██╔╝░╚█████╔╝██║░░██║██████╔╝  ╚█████╔╝██║░░██║███████╗╚█████╔╝██║░╚██╗███████╗██║░░██║
╚═════╝░╚══════╝░╚════╝░░╚═════╝░╚═╝░░╚═╝╚══════╝  ╚═╝░░░░░╚═╝░░╚═╝╚═════╝░╚═════╝░░░░╚═╝░░░╚═╝░░░╚════╝░╚═╝░░╚═╝╚═════╝░  ░╚════╝░╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
AN OPEN SOURCE COMMAND-LINE UTILITY TO HELP YOU IDENTIFY IF THE PASSWORD YOU'RE USING HAS BEEN A PART OF ANY DATA BREACH ON THE INTERNET
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

 How to use ?
 Very Simple... Just follow this syntax and you'll be set 😉
 securepasswordchecker <password1> <password12> <password3> and so on...

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Developed by Ajay Agrawal | Github: https://github.com/ajayagrawalgit
Support me if you like my work : https://www.buymeacoffee.com/ajayagrawal

Cheers 🥂 

_______________________________________________________________________________


"


PYTHON_VERSION=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:3])))' 2>&1)
if [ -n "$PYTHON_VERSION" ] && [ "$(echo "$PYTHON_VERSION" | awk -F. '{ printf("%03d%03d%03d\n", $1,$2,$3); }')" -lt "$(echo '3.11.2' | awk -F. '{ printf("%03d%03d%03d\n", $1,$2,$3); }')" ]; then
  echo "Upgrading to Python 3.11.2"
  if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    brew install python@3.11
  elif [[ -f /etc/redhat-release ]]; then
    # RHEL/CentOS
    sudo yum update -y
    sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
    sudo yum install -y python3.11
  else
    # Debian/Ubuntu
    sudo apt-get update
    sudo apt-get install -y software-properties-common
    sudo add-apt-repository -y ppa:deadsnakes/ppa
    sudo apt-get update
    sudo apt-get install -y python3.11
  fi
else
  echo "Python version is already up to date"
fi


# Install required packages
echo "Installing required packages"
pip3 install -r requirements.txt
if [[ $? -ne 0 ]]; then
  echo "Failed to install required packages"
  exit 1
fi

sleep 2


echo -e "$(date): Performing some cleanup before starting ..."
if [ -d "/usr/local/lib/Secure-Password-Checker" ]; then
    echo "Older verion of Secure-Password-Checker found. Removing it..."
    rm -r "/usr/local/lib/Secure-Password-Checker"
fi

if [ -L "/usr/local/bin/securepasswordchecker" ]; then
    echo "Removing the softlinks as well..."
    rm -f "/usr/local/bin/securepasswordchecker"
fi

echo -e "Cleanup Completed !"

sleep 2

echo -e "$(date): \n\nCopying Libraries Now..."
mkdir /usr/local/lib/Secure-Password-Checker
cp -r * /usr/local/lib/Secure-Password-Checker/.
echo -e "$(date): \n\nLibraries Copied..."

sleep 2

echo -e "\n\n$(date): \n\nMaking the library accessible accross terminal now..."
ln -s /usr/local/lib/Secure-Password-Checker/src/securepasswordchecker.sh /usr/local/bin/securepasswordchecker
chmod 755 /usr/local/lib/Secure-Password-Checker/src/*

sleep 4

echo -e "\n$(date): Secure-Password-Checker Installed Successfullly\nTry running this command -> securepasswordchecker\nAnd then you'll be able to understand the rest where to take it forward from there 😉\n\nAll the best 🔥\n"
