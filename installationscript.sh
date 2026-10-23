#!/bin/bash
running_package(){
    npm init -y
npm pkg set type=module
npm install --save-dev hardhat
}
declare  -i choice ;
read -e -p  """1)create new directory
2)run hardhat installation here
3)Open new path
:""" choice ;
if [ $choice == 1 ]; then
 read -p "name for the directory:" directory
 mkdir "$directory" && cd "$directory" && running_package
elif [ $choice == 2 ]; then
echo "running installation" && running_package
elif [ $choice == 3 ]; then
read -p "enter a valid directory path:" path
cd "$path" && running_package &>log.txt
else
echo "no valid option chosen"
exit 0
fi
read -e  -p "Do you want to run hardhat \--init ?(Y/N)" response ;
if [ "$response" == "Y" ] ; then
npx hardhat --init --template mocha-ethers
else
 echo "completed "
fi
