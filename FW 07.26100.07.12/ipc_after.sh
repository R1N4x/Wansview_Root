sleep 5
echo -e "\e[1;41m###########################################\e[1;m"
echo "Enabling root access"
echo -e "\e[1;41m###########################################\e[1;m"
sleep 3
echo -e "\e[1;41m### Setting new root password! ###\e[1;m"
echo "root:changeme" | chpasswd
echo -e "\e[1;42mDone, have fun!\e[1;m"
