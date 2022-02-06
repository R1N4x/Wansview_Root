sleep 5
echo "-e "\e[1;41m###########################################\e[1;m"
echo "ipc_after.sh triggered! Will run after 10s!"
echo "-e "\e[1;41m###########################################\e[1;m"
sleep 10
echo -e "\e[1;41m### Setting new root password! ###\e[1;m"
echo "root:changeme" | chpasswd
echo -e "\e[1;42mDone, have fun!\e[1;m"
