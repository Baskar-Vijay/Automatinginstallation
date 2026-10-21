#!/bin/bash
running_package(){
    npm init -y
npm pkg set type=module
npm install --save-dev hardhat
}
read -e -p  "1)create new directory \\n2)run hardhat installation here \\n3)Open new path" choice ;
if [ "$choice" == "1" ]; then 
 read -p "name for the directory:" directory 
 mkdir "$directory" && cd "$directory" && running_package
elif [ "$choice" == "2" ]; then 
echo "running installation" 
elif [ "$choice" == "3" ]; then 
read -p "enter a valid directory path:" path 
cd "$path" && running_package
else 
echo "no valid option chosen"
fi 
