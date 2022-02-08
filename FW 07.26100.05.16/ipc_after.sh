sleep 5
echo -e "\e[1;41m"
echo -e "Will enable root access in 3s\e[1;m"
sleep 3
echo "root:changeme" | chpasswd
echo -e "\e[1;42mDone, have fun!\e[1;m"
