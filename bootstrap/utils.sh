#!/bin/bash

isPackageInstalled() {
    if [ $(dpkg-query -W -f='${Status}' $1 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
    	return 0
	else
		return 1
	fi
}

bold() {
	echo -e "\033[1m$1\033[0m"
}

ask() {
    echo
    bold "$1 (y/n)"
    read -n 1 -r
    echo
}
